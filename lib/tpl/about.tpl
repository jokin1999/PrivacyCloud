<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Privacy Cloud - 个人云存储</title>
    <link rel="shortcut icon" href="./lib/tpl/img/logo_pc.png">
    <link rel="stylesheet" href="./lib/tpl/css/bootstrap.min.css">
    <script src="./lib/tpl/js/jquery-3.2.1.min.js" charset="utf-8"></script>
    <script src="./lib/tpl/js/bootstrap.bundle.min.js" charset="utf-8"></script>
    {_common_var_}
    <script src="./lib/tpl/js/main.js?ver=__VERSION__" charset="utf-8"></script>
    <script type="text/javascript">
      $(function(){
        document.getElementById("SP").innerHTML = (sp === "") ? "缺失" : sp;
        document.getElementById("flux").innerHTML = flux;
      });
    </script>
  </head>
  <body>

    {_nav_}

    <div class="jumbotron pb-2">
      <div class="container">
        <h1 class="display-4">Privacy Cloud</h1>
        <p class="lead">私有云对象存储服务管理一站式解决方案</p>
        <hr class="my-4">
        <p>如果有问题请先阅读<a href="//github.com/jokin1999/PrivacyCloud/blob/master/README.md" target="_blank">Readme</a>文档。</p>
        <p class="lead">
          <a class="btn btn-primary btn-md" href="//pc.twocola.com" target="_blank" role="button">官方网站</a>
          <a class="btn btn-success btn-md" href="//github.com/jokin1999/PrivacyCloud" target="_blank" role="button">项目源码</a>
        </p>
      </div>
    </div>

    <div class="container mt-4" id="container">
      <div class="row">
        <div class="col-md-6 col-sm-12">
          <div class="card">
            <div class="card-header bg-dark text-white">反馈</div>
            <div class="card-body">
              <p>在使用过程中有任何疑问或发现了Bug欢迎您发送邮件到 <strong>jokin@twocola.com</strong>，请注明以下内容：</p>
              <ol>
                <li>反馈项目：Privacy Cloud</li>
                <li>Bug复现流程</li>
                <li>即时联系方式如QQ、微信等。</li>
              </ol>
              <p>我们会及时给予回复！</p>
            </div>
            <div class="card-footer text-muted">
              <small>当前版本：__VERSION__</small>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-sm-12">
          <div class="card">
            <div class="card-header bg-dark text-white">版本一览</div>
            <div class="card-body">
              <ul class="pl-4">
                <li>当前版本：__VERSION__</li>
                <li>内核版本：__CORE_VERSION__</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>

    {_footer_}

  </body>
</html>
