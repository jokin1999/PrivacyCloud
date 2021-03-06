<?php
// +----------------------------------------------------------------------
// | Constructed by Jokin [ Think & Do & To Be Better ]
// +----------------------------------------------------------------------
// | Copyright (c) 2016-2018 Jokin All rights reserved.
// +----------------------------------------------------------------------
// | Author: Jokin <Jokin@twocola.com>
// +----------------------------------------------------------------------
class qiniu {
  public function hello(){
    $err['code'] = "0";
    $err['msg'] = "Hello.";
    $err['msg_zh'] = "欢迎使用Privacy Cloud API！";
    echo json_encode($err);
  }
  public function del(){
    if( isset($_GET['key']) ){
      $res = PrivacyCloud\sdk::delFile($_GET['key']);
      if($res){
        $err['code'] = "JPCAE02";
        $err['msg'] = $res->message();
        $err['msg_zh'] = "删除失败";
        echo json_encode($err);
      }else{
        $err['code'] = "0";
        $err['msg'] = "success";
        $err['msg_zh'] = "删除成功";
        echo json_encode($err);
      }
    }else{
      $err['code'] = "JPCAE01";
      $err['msg'] = "bad infomation";
      $err['msg_zh'] = "提交的数据不合法";
      echo json_encode($err);
    }
  }
  public function download(){
    if( isset($_GET['url']) && !empty($_GET['url']) ){
      $res = PrivacyCloud\sdk::getDownloadUrl($_GET['url']);
      $err['code'] = "0";
      $err['msg'] = "success";
      $err['msg_zh'] = "成功获取下载链接";
      $err['data'] = $res;
      echo json_encode($err);
    }else{
      $err['code'] = "JPCAE01";
      $err['msg'] = "bad infomation";
      $err['msg_zh'] = "提交的数据不合法";
      echo json_encode($err);
    }
  }
  public function rename(){
    if( isset($_POST['okey']) && !empty($_POST['key']) ){
      $res = PrivacyCloud\sdk::simpleMove($_POST['okey'], $_POST['key'], true);
      $err['code'] = "0";
      $err['msg'] = "success";
      $err['msg_zh'] = "重命名成功";
      $err['data'] = $res;
      echo json_encode($err);
    }else{
      $err['code'] = "JPCAE01";
      $err['msg'] = "bad infomation";
      $err['msg_zh'] = "提交的数据不合法";
      echo json_encode($err);
    }
  }
}
?>
