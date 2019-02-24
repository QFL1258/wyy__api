//使用express构建web服务器
const express = require('express');
const pool=require("./pool");
const bodyParser = require('body-parser');
//加载跨域访问组件
const cors=require("cors");
//加载 加载第三方模块 express-sessionStorage
const session=require("express-session");
const app = express();
const PORT =  5050; 
app.listen(PORT, ()=>{
  console.log('Server Listening: '+PORT);
});
// app.use(cors({
//   origin:["http://192.168.1.32:8080/","http://localhost:8080"],
//   credentials:true //要求客户端必须携带cookie
// }))
app.use(cors());
//使用body-parser中间件
// app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json());
//__dirname 当前程序所属目录绝对路径
app.use(express.static(__dirname+"/public"))
app.use(session({
  secret:"128位随机字符", //安全字符串
  resave:false,            //请求保存
  saveUninitialized:true,  //初始化保存
  cookie:{
    maxAge:1000*60*60*24
  }
}))

//功能1，轮播图
app.get("/imagelist",(req,res)=>{ 
  var obj=[
    {id:1,img_url:"http://wyyapi.applinzi.com/img/1.jpg"},
    {id:2,img_url:"http://wyyapi.applinzi.com/img/2.jpg"},
    {id:3,img_url:"http://wyyapi.applinzi.com/img/3.jpg"},
    {id:4,img_url:"http://wyyapi.applinzi.com/img/4.jpg"},
    {id:5,img_url:"http://wyyapi.applinzi.com/img/5.jpg"},
    {id:6,img_url:"http://wyyapi.applinzi.com/img/6.jpg"},
    {id:7,img_url:"http://wyyapi.applinzi.com/img/7.jpg"},
    {id:8,img_url:"http://wyyapi.applinzi.com/img/8.jpg"},
  ];
  res.send(obj);
})
//功能2：登录功能
app.get('/login',(req,res)=>{
  var phone=req.query.phone;
  var pwd=req.query.pwd;
  var sql=" SELECT count(nid) as c FROM login WHERE phone=? AND pwd=? " 
  pool.query(sql,[phone,pwd],(err,result)=>{
    if(err) throw err;
    var obj =result[0].c
    if(obj==1){
      //7.3将用户名保存到session对象中
      req.session.phone= phone;
      res.send({code:1,msg:"登录成功"})
    }else{
      res.send({code:-1,msg:"手机号或密码有误"})
    }
  })
})
//功能3：用户注册
app.post('/register',(req,res)=>{
    var phone=req.body.phone;
    var  pwd=req.body.pwd;
   var sql=" INSERT INTO `login`(`nid`, `phone`, `pwd`) VALUES(NULL,?,?) "
    pool.query(sql,[phone,pwd],(err,result)=>{
      if(err) throw err;
      if(result.affectedRows>0){
        res.send({code:1,msg:'注册成功'});
      }else{
        res.send({code:-1,msg:'注册失败'})
      }
    })
})
//功能推荐图片
app.get("/recom",(req,res)=>{
  var sql=" SELECT nid,img_url,title,play,counts FROM recommend";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})
//功能4：歌单
app.get("/product",(req,res)=>{
   //1:获取参数
   var pno =req.query.pno //获取当前页码
   var pageSize=req.query.pageSize;//获取一页有多少
   var nid =req.query.nid;//获取nid
   //2：设置默认值1 20
   if(!pno){pno=1};
   if(!pageSize){pageSize=20};
   //3：创建正则表达式验证用户输入验证
   var reg = /^[0-9]{1,3}$/;
   //4：如果出错停止函数运行
   if(!reg.test(pno)){
     res.send({code:-1,msg:"当前页码格式不正确"});
     return;
   }
   if(!reg.test(pageSize)){
     res.send({code:-2,msg:"当前页码数量不正确"});
     return;
   }
 
   var progress=0;
   var obj={code:1};
 
   //查询一共有多少条数据 严格区分大小写
   var sql ="SELECT count(nid) AS c FROM product";
   pool.query(sql,(err,result)=>{
     if(err) throw err;
     var pageCount = Math.ceil(result[0].c/pageSize);/*向上取整总页数*/
     progress+=50;
     obj.pageCount=pageCount;
     if(progress==100){
       res.send(obj);
     }
   })
   //查询当前页的内容
  var sql="SELECT nid,img_url,title,play,counts FROM product LIMIT ?,?";
  var offset=parseInt((pno-1)*pageSize);//当前页数减去当前1*一页多少
      pageSize=parseInt(pageSize);

  pool.query(sql,[offset,pageSize],(err,result)=>{
      if(err) throw err;
      progress+=50;
      obj.data=result;
      // res.send(result)
      if(progress==100){
        res.send(obj);
      }
  })
})

// app.get("/product",(req,res)=>{
//   var nid=req.query.nid;
//   var sql="SELECT nid,img_url,title,play,counts FROM product WHERE nid=?"
//   pool.query(sql,[nid],(err,result)=>{
//     if(err) throw err;
//     res.send;
//   })
// })



