<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8" />
  <meta name="description" content="WebVOWL - Web-based Visualization of Ontologies" />
  <meta name="robots" content="noindex,nofollow" />
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=1">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <title>TitanLaw</title>

  <!-- Bootstrap -->
  <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!--webvowl-->
  <link rel="stylesheet" type="text/css" href="vendors/webvowl_1.0.4/css/webvowl.css" />
  <link rel="stylesheet" type="text/css" href="vendors/webvowl_1.0.4/css/webvowl.app.css" />
  <!-- Custom Theme Style -->
  <link href="build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
  <div class="main_container">
    <div class="col-md-3 left_col">
      <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
          <a href="index.jsp" class="site_title"><img src="production/images/logo.png" width="50" height="35"/> </i> <span>TitanLaw</span></a>
        </div>

        <div class="clearfix"></div>

        <!-- menu profile quick info -->
        <div class="profile clearfix">
          <div class="profile_pic">
            <img src="production/images/img.jpg" alt="..." class="img-circle profile_img">
          </div>
          <div class="profile_info">
            <span>Welcome,</span>
            <h2>Vindula</h2>
          </div>
        </div>
        <!-- /menu profile quick info -->

        <br />

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
          <div class="menu_section">
            <h3>Explorer</h3>
            <ul class="nav side-menu">
              <li><a href="index.jsp"><i class="fa fa-home"></i> Home </a></li>
              <li><a href="search.jsp"> <i class="fa fa-edit"></i> Case Search </a></li>
              <li><a><i class="fa fa-desktop"></i> Ontology Explorer </a></li>
            </ul>
          </div>
        </div>
        <!-- /sidebar menu -->

        <!-- /menu footer buttons -->
        <div class="sidebar-footer hidden-small">
          <a data-toggle="tooltip" data-placement="top" title="Settings">
            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
          </a>
          <a data-toggle="tooltip" data-placement="top" title="FullScreen">
            <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
          </a>
          <a data-toggle="tooltip" data-placement="top" title="Lock">
            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
          </a>
          <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.jsp">
            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
          </a>
        </div>
        <!-- /menu footer buttons -->
      </div>
    </div>

    <!-- top navigation -->
    <div class="top_nav">
      <div class="nav_menu">
        <nav>
          <div class="nav toggle">
            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
          </div>

          <ul class="nav navbar-nav navbar-right">
            <li class="">
              <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                <img src="production/images/img.jpg" alt="">Vindula Jayawardana
                <span class=" fa fa-angle-down"></span>
              </a>
              <ul class="dropdown-menu dropdown-usermenu pull-right">
                <li><a href="javascript:;"> Profile</a></li>
                <li>
                  <a href="javascript:;">
                    <span>Settings</span>
                  </a>
                </li>
                <li><a href="javascript:;">Help</a></li>
                <li><a href="login.jsp"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
              </ul>
            </li>
          </ul>
        </nav>
      </div>
    </div>
    <!-- /top navigation -->

    <!-- page content -->
    <div class="right_col" role="main">
      <main>
        <div id="canvasArea">
          <div id="browserCheck" class="hidden">
            WebVOWL does not work properly in Internet Explorer and Microsoft Edge. Please use another browser, such as
            <a href="https://www.mozilla.org/de/firefox/">Mozilla Firefox</a> or
            <a href="https://www.google.com/chrome/">Google Chrome</a>, to run WebVOWL.
            <label id="killWarning">Hide warning</label>
          </div>
          <div id="loading-info">
            <div id="loading-error" class="hidden">
              <div id="error-info"></div>
              <div id="error-description-button" class="hidden">Show error details</div>
              <div id="error-description-container" class="hidden">
                <pre id="error-description"></pre>
              </div>
            </div>
            <div id="loading-progress" class="hidden">
              <span>Loading ontology... </span>
              <div class="spin">&#8635;</div><br>
              <div id="myProgress">
              <div id="myBar"></div>
            </div>
            </div>
          </div>
          <nav id="optionsArea">
            <ul id="optionsMenu">
              <li id="pauseOption"><a id="pause-button" href="#">Pause</a></li>
              <li id="resetOption"><a id="reset-button" href="#" type="reset">Reset</a></li>
              <li id="moduleOption"><a href="#">Modes</a>
                <ul class="toolTipMenu module">
                  <li class="toggleOption" id="dynamicLabelWidth"></li>
                  <li class="toggleOption" id="pickAndPinOption"></li>
                  <li class="toggleOption" id="nodeScalingOption"></li>
                  <li class="toggleOption" id="compactNotationOption"></li>
                  <li class="toggleOption" id="colorExternalsOption"></li>
                </ul>
              </li>
              <li id="filterOption"><a href="#">Filter</a>
                <ul class="toolTipMenu filter">
                  <li class="toggleOption" id="datatypeFilteringOption"></li>
                  <li class="toggleOption" id="objectPropertyFilteringOption"></li>
                  <li class="toggleOption" id="subclassFilteringOption"></li>
                  <li class="toggleOption" id="disjointFilteringOption"></li>
                  <li class="toggleOption" id="setOperatorFilteringOption"></li>
                  <li class="slideOption" id="nodeDegreeFilteringOption"></li>
                </ul>
              </li>
              <li id="gravityOption"><a href="#">Gravity</a>
                <ul class="toolTipMenu gravity">
                  <li class="slideOption" id="classSliderOption"></li>
                  <li class="slideOption" id="datatypeSliderOption"></li>
                </ul>
              </li>
              <li id="li_locationSearch"> <a title="Enter term." href="#" id="locateSearchResult">&#8853;</a></li>
              <li class="searchMenu" id="searchMenuId">
                <input class="searchInputText" type="text" id="search-input-text" placeholder="Search">
                <ul class="searchMenuEntry" id="searchEntryContainer">
                </ul>
              </li>
              <li id="li_right" style="float:left">
                <a href="#" id="RightButton"></a>
              </li>
              <li id="li_left" style="float:left">
                <a href="#" id="LeftButton"></a>
              </li>
            </ul>
          </nav>
          <div id="graph"></div>
        </div>
        <aside id="detailsArea">
          <section id="generalDetails">
            <h1 id="title"></h1>
            <h5>Version: <span id="version"></span></h5>
            <h5>Author(s): <span id="authors"></span></h5>
            <br>
            <h3 class="accordion-trigger accordion-trigger-active">Description</h3>
            <div class="accordion-container scrollable">
              <p id="description"></p>
            </div>
            <br>
            <h3 class="accordion-trigger">Metadata</h3>
            <div id="ontology-metadata" class="accordion-container"></div>
            <br>
            <h3 class="accordion-trigger">Statistics</h3>
            <div class="accordion-container">
              <p class="statisticDetails">Classes: <span id="classCount"></span></p>
              <p class="statisticDetails">Object prop.: <span id="objectPropertyCount"></span></p>
              <p class="statisticDetails">Datatype prop.: <span id="datatypePropertyCount"></span></p>
              <div class="small-whitespace-separator"></div>
              <p class="statisticDetails">Individuals: <span id="individualCount"></span></p>
              <div class="small-whitespace-separator"></div>
              <p class="statisticDetails">Nodes: <span id="nodeCount"></span></p>
              <p class="statisticDetails">Edges: <span id="edgeCount"></span></p>
            </div>
            <br>
            <h3 class="accordion-trigger" id="selection-details-trigger">Selection Details</h3>
            <div class="accordion-container" id="selection-details">
              <div id="classSelectionInformation" class="hidden">
                <p class="propDetails">Name: <span id="name"></span></p>
                <p class="propDetails">Type: <span id="typeNode"></span></p>
                <p class="propDetails">Equiv.: <span id="classEquivUri"></span></p>
                <p class="propDetails">Disjoint: <span id="disjointNodes"></span></p>
                <p class="propDetails">Charac.: <span id="classAttributes"></span></p>
                <p class="propDetails">Individuals: <span id="individuals"></span></p>
                <p class="propDetails">Description: <span id="nodeDescription"></span></p>
                <p class="propDetails">Comment: <span id="nodeComment"></span></p>
              </div>
              <div id="propertySelectionInformation" class="hidden">
                <p class="propDetails">Name: <span id="propname"></span></p>
                <p class="propDetails">Type: <span id="typeProp"></span></p>
                <p id="inverse" class="propDetails">Inverse: <span></span></p>
                <p class="propDetails">Domain: <span id="domain"></span></p>
                <p class="propDetails">Range: <span id="range"></span></p>
                <p class="propDetails">Subprop.: <span id="subproperties"></span></p>
                <p class="propDetails">Superprop.: <span id="superproperties"></span></p>
                <p class="propDetails">Equiv.: <span id="propEquivUri"></span></p>
                <p id="infoCardinality" class="propDetails">Cardinality: <span></span></p>
                <p id="minCardinality" class="propDetails">Min. cardinality: <span></span></p>
                <p id="maxCardinality" class="propDetails">Max. cardinality: <span></span></p>
                <p class="propDetails">Charac.: <span id="propAttributes"></span></p>
                <p class="propDetails">Description: <span id="propDescription"></span></p>
                <p class="propDetails">Comment: <span id="propComment"></span></p>
              </div>
              <br>
              <div id="noSelectionInformation">
                <p><span>Select an element in the visualization.</span></p>
              </div>
            </div>
          </section>
        </aside>

      </main>
    </div>
    <!-- /page content -->

  </div>
</div>

<!-- jQuery -->
<script src="vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Custom Theme Scripts -->
<script src="../build/js/custom.min.js"></script>
<!--web owl -->
<script src="vendors/webvowl_1.0.4/js/d3.min.js"></script>
<script src="vendors/webvowl_1.0.4/js/webvowl.js"></script>
<script src="vendors/webvowl_1.0.4/js/webvowl.app.js"></script>
<script>
    window.onload = webvowl.app().initialize;
</script>

</body>
</html>
