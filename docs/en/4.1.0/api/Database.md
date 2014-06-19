#Database
<div class="btn-group"><a href="#Methods" class="btn"><i class="icon-cog"></i> Methods<sup>&nbsp;10</sub></a><a class="btn dropdown-toggle" data-toggle="dropdown" data-target="#" href="#Methods" >  <span class="caret"></span>&nbsp;</a><ul class="dropdown-menu" style="max-height: 500px;overflow: auto;"><li class="disabled"><a tabindex="-1" href="#"><b><i>Constructs</i></b></a><li><a href="#mclose" data-target="cMethodclose" class="autouncollapse">Destructor</a></li><li><a href="#minitialize" data-target="cMethodinitialize" class="autouncollapse">Constructor</a></li></li><li class="divider"></li><li class="disabled"><a tabindex="-1" href="#"><b><i>Methods - Instance</i></b></a><li><a href="#mcommitTransaction" data-target="cMethodcommitTransaction" class="autouncollapse">&nbsp;<span class='text-info'>commitTransaction</span></a></li><li><a href="#mdestroyTable" data-target="cMethoddestroyTable" class="autouncollapse">destroyTable</a></li><li><a href="#mdestroyTables" data-target="cMethoddestroyTables" class="autouncollapse">destroyTables</a></li><li><a href="#mexecuteBatchSql" data-target="cMethodexecuteBatchSql" class="autouncollapse">executeBatchSql</a></li><li><a href="#mexecuteSql" data-target="cMethodexecuteSql" class="autouncollapse">executeSql</a></li><li><a href="#misTableExist" data-target="cMethodisTableExist" class="autouncollapse">&nbsp;<span class='text-info'>isTableExist</span></a></li><li><a href="#mrollbackTransaction" data-target="cMethodrollbackTransaction" class="autouncollapse">&nbsp;<span class='text-info'>rollbackTransaction</span></a></li><li><a href="#mstartTransaction" data-target="cMethodstartTransaction" class="autouncollapse">startTransaction</a></li></li></ul></div><div class="btn-group"><a href="#Examples" class="btn"><i class="icon-edit"></i> Examples<sup>&nbsp;3</sup></a><button href="#" class="btn dropdown-toggle" data-toggle="dropdown">  <span class="caret"></span>&nbsp;</button><ul class="dropdown-menu" style="max-height: 500px;overflow: auto;"><li><a href="#e0" data-target="eExample0" class="autouncollapse">Using Transactions</a></li><li><a href="#e1" data-target="eExample1" class="autouncollapse">Open and close database</a></li><li><a href="#e2" data-target="eExample2" class="autouncollapse">destroyTables</a></li></ul></div><div class="btn-group pull-right"><button class="btn dropdown-toggle" id="apiFilterBtn" data-toggle="dropdown" href="#" title="Filter Properties and Methods"><i class="icon-filter "></i>Show</button><select id="apiFilter" class="dropdown-menu apiFilter"><option value="all">All</option><option value="js">Javascript</option><option value="ruby">Ruby</option><option value="android">Android</option><option value="ios">iOS</option><option value="wm">Windows Mobile</option><option value="wp8">Windows Phone 8</option><option value="w32">Windows Desktop</option><option value="msi">MSI Only</option></select></div><div  id="apibody" style="overflow:auto;padding-right: 5px;">
<p>Database is low-level API to access SQLite local database.</p>
<p>This API used internally by RHOM. To use RHOM, just define your models and partition databases will be created automatically.</p>

<h2>Enabling the API</h2>

<p>This API is part of the <code>coreapi</code> extension that is included automatically.</p>

<pre><code>:::ruby
extensions: ["coreapi"]
</code></pre>

<h2>JavaScript Usage</h2>

<p>Be sure to review the <a href="/guide/api_js">JavaScript API Usage</a> guide for important information about using this API in JavaScript.</p>

<h2>Ruby Usage</h2>

<p>Be sure to review the <a href="/guide/api_ruby">Ruby API Usage</a> guide for important information about using this API in Ruby.</p>


<a name='Methods'></a>
<h2><i class='icon-cog'></i>Methods</h2>

<div class="accordion" id="accordion"><a name ='mclose'/><div class=' method  js ruby android ios wp8' id='mclose'><h3><strong  ><span class="label label-inverse"> Destructor</span> close</strong><span style='font-size:.7em;font-weight:normal;'>()</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#mclose1" data-toggle="tab">Description</a></li><li ><a href="#mclose4" data-toggle="tab">Return</a></li><li ><a href="#mclose6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-close'><div class="tab-pane fade active in" id="mclose1"><p>Closes the database. The database will not be accessible until it is opened again.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Javascript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mclose2"></div><div class="tab-pane fade" id="mclose3"></div><div class="tab-pane fade" id="mclose4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mclose6"><div><p><strong>Method Access:</strong></p><ul><li>Class Method: This method is a destructor and can only be accessed via the object that was created by the `new` constructor. <ul><li>Javascript: <code>myObj.close()</code> </li><li>Ruby: <code>@myObj.close()</code></li></ul></li></ul></div></div></div>  </div><a name ='mcommitTransaction'/><div class=' method  js ruby android ios wp8' id='mcommitTransaction'><h3><strong  ><span class="text-info">commitTransaction</span></strong><span style='font-size:.7em;font-weight:normal;'>()</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#mcommitTransaction1" data-toggle="tab">Description</a></li><li ><a href="#mcommitTransaction4" data-toggle="tab">Return</a></li><li ><a href="#mcommitTransaction6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-commitTransaction'><div class="tab-pane fade active in" id="mcommitTransaction1"><span class='label label-info'>Replaces:</span> <span class='label label-info'>commit</span>  <p>Commit database transaction. Saves all updates to the database from the start of the transaction.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Javascript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mcommitTransaction2"></div><div class="tab-pane fade" id="mcommitTransaction3"></div><div class="tab-pane fade" id="mcommitTransaction4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mcommitTransaction6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-file"></i>Instance Method: This method can be accessed via an instance object of this class: <ul><li><code>myObject.commitTransaction()</code></li></ul></li></ul></div></div></div>  </div><a name ='mdestroyTable'/><div class=' method  js ruby android ios wp8' id='mdestroyTable'><h3><strong  >destroyTable</strong><span style='font-size:.7em;font-weight:normal;'>(<span class="text-info">STRING</span> tableName)</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#mdestroyTable1" data-toggle="tab">Description</a></li><li ><a href="#mdestroyTable2" data-toggle="tab">Parameters</a></li><li ><a href="#mdestroyTable4" data-toggle="tab">Return</a></li><li ><a href="#mdestroyTable6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-destroyTable'><div class="tab-pane fade active in" id="mdestroyTable1"><p>Destroys a database table.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Javascript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mdestroyTable2"><div><p><strong>Parameters</strong></p><ul><li>tableName : <span class='text-info'>STRING</span><p><p>Table name to destroy.</p>
 </p></li></ul></div></div><div class="tab-pane fade" id="mdestroyTable3"></div><div class="tab-pane fade" id="mdestroyTable4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mdestroyTable6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-file"></i>Instance Method: This method can be accessed via an instance object of this class: <ul><li><code>myObject.destroyTable(<span class="text-info">STRING</span> tableName)</code></li></ul></li></ul></div></div></div>  </div><a name ='mdestroyTables'/><div class=' method  js ruby android ios wp8' id='mdestroyTables'><h3><strong  >destroyTables</strong><span style='font-size:.7em;font-weight:normal;'>(<span class="text-info">HASH</span> propertyMap)</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#mdestroyTables1" data-toggle="tab">Description</a></li><li ><a href="#mdestroyTables2" data-toggle="tab">Parameters</a></li><li ><a href="#mdestroyTables4" data-toggle="tab">Return</a></li><li ><a href="#mdestroyTables6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-destroyTables'><div class="tab-pane fade active in" id="mdestroyTables1"><p>Destroy a list of database tables.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Javascript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mdestroyTables2"><div><p><strong>Parameters</strong></p><ul><li>propertyMap : <span class='text-info'>HASH</span><p> </p></li><ul><li>include : <span class='text-info'>ARRAY</span><p><p>Include tables.</p>
 </p></li><li>exclude : <span class='text-info'>ARRAY</span><p><p>Exclude tables.</p>
 </p></li></ul></ul></div></div><div class="tab-pane fade" id="mdestroyTables3"></div><div class="tab-pane fade" id="mdestroyTables4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mdestroyTables6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-file"></i>Instance Method: This method can be accessed via an instance object of this class: <ul><li><code>myObject.destroyTables(<span class="text-info">HASH</span> propertyMap)</code></li></ul></li></ul></div></div></div>  </div><a name ='mexecuteBatchSql'/><div class=' method  js ruby android ios wp8' id='mexecuteBatchSql'><h3><strong  >executeBatchSql</strong><span style='font-size:.7em;font-weight:normal;'>(<span class="text-info">STRING</span> sqlStmt)</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#mexecuteBatchSql1" data-toggle="tab">Description</a></li><li ><a href="#mexecuteBatchSql2" data-toggle="tab">Parameters</a></li><li ><a href="#mexecuteBatchSql4" data-toggle="tab">Return</a></li><li ><a href="#mexecuteBatchSql6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-executeBatchSql'><div class="tab-pane fade active in" id="mexecuteBatchSql1"><p>Execute a series of sql statements included in the sqlStmt string parameter.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Javascript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mexecuteBatchSql2"><div><p><strong>Parameters</strong></p><ul><li>sqlStmt : <span class='text-info'>STRING</span><p><p>The SQL statement.</p>
 </p></li></ul></div></div><div class="tab-pane fade" id="mexecuteBatchSql3"></div><div class="tab-pane fade" id="mexecuteBatchSql4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mexecuteBatchSql6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-file"></i>Instance Method: This method can be accessed via an instance object of this class: <ul><li><code>myObject.executeBatchSql(<span class="text-info">STRING</span> sqlStmt)</code></li></ul></li></ul></div></div></div>  </div><a name ='mexecuteSql'/><div class=' method  js ruby android ios wp8' id='mexecuteSql'><h3><strong  >executeSql</strong><span style='font-size:.7em;font-weight:normal;'>(<span class="text-info">STRING</span> sqlStmt, <span class="text-info">ARRAY</span> args)</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#mexecuteSql1" data-toggle="tab">Description</a></li><li ><a href="#mexecuteSql2" data-toggle="tab">Parameters</a></li><li ><a href="#mexecuteSql4" data-toggle="tab">Return</a></li><li ><a href="#mexecuteSql6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-executeSql'><div class="tab-pane fade active in" id="mexecuteSql1"><p>Execute the sql statement specified in the method&rsquo;s parameters.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Javascript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mexecuteSql2"><div><p><strong>Parameters</strong></p><ul><li>sqlStmt : <span class='text-info'>STRING</span><p><p>The SQL statement.</p>
 </p></li><li>args : <span class='text-info'>ARRAY</span> <span class='label label-info'>Optional</span><p><p>Array of the sql expressions.</p>
 </p></li></ul></div></div><div class="tab-pane fade" id="mexecuteSql3"></div><div class="tab-pane fade" id="mexecuteSql4"><div><p><strong>Synchronous Return:</strong></p><ul><li>ARRAY : <p>Array of Hashes. Each Hash item represents record from Database.</p>
</li></ul></div></div><div class="tab-pane fade" id="mexecuteSql6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-file"></i>Instance Method: This method can be accessed via an instance object of this class: <ul><li><code>myObject.executeSql(<span class="text-info">STRING</span> sqlStmt, <span class="text-info">ARRAY</span> args)</code></li></ul></li></ul></div></div></div>  </div><a name ='minitialize'/><div class=' method  js ruby android ios wp8' id='minitialize'><h3><span class="label label-inverse"> Constructor</span>  <strong  > new Rho::Database</strong><span style='font-size:.7em;font-weight:normal;'>(<span class="text-info">STRING</span> dbPath, <span class="text-info">STRING</span> dbPartition)</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#minitialize1" data-toggle="tab">Description</a></li><li ><a href="#minitialize2" data-toggle="tab">Parameters</a></li><li ><a href="#minitialize4" data-toggle="tab">Return</a></li><li ><a href="#minitialize6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-initialize'><div class="tab-pane fade active in" id="minitialize1"><p>This method is a constructor for this class. Instead of saying Rho.Database.initialize(dbPath,dbPartition) you would use new Rho.Database(dbPath,dbPartition). ex: <code>var db = new Rho.Database(Rho.Application.databaseFilePath('test'), 'test');</code> Make sure you issue a <code>.close()</code> when you are finished using the database. If the database file does not exist it will be created using a SQL schema: rhodes\platform\shared\db\res\db\syncdb.schema. Do not use predefined partition names: app, user, local. Do not open the same database file in different partitions. Do not use the same partition for different database files. Do not open the same file twice.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Javascript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="minitialize2"><div><p><strong>Parameters</strong></p><ul><li>dbPath : <span class='text-info'>STRING</span><p><p>The path to the database. Databases stored at the path provided by Rho::Application.databaseFilePath.</p>
 </p></li><li>dbPartition : <span class='text-info'>STRING</span><p><p>The database partition. Used as a file name for database and when connecting to RhoConnect server.</p>
 </p></li></ul></div></div><div class="tab-pane fade" id="minitialize3"></div><div class="tab-pane fade" id="minitialize4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="minitialize6"><div><p><strong>Method Access:</strong></p><ul><li>Class Method: This method is a constructor and can only be accessed via the `new` construct. <ul><li>Javascript: <code>var myObj = new Rho.Database(<span class="text-info">STRING</span> dbPath, <span class="text-info">STRING</span> dbPartition)</code> </li><li>Ruby: <code>@myObj = Rho::Database.new(<span class="text-info">STRING</span> dbPath, <span class="text-info">STRING</span> dbPartition)</code></li></ul></li></ul></div></div></div>  </div><a name ='misTableExist'/><div class=' method  js ruby android ios wp8' id='misTableExist'><h3><strong  ><span class="text-info">isTableExist</span></strong><span style='font-size:.7em;font-weight:normal;'>(<span class="text-info">STRING</span> tableName)</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#misTableExist1" data-toggle="tab">Description</a></li><li ><a href="#misTableExist2" data-toggle="tab">Parameters</a></li><li ><a href="#misTableExist4" data-toggle="tab">Return</a></li><li ><a href="#misTableExist6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-isTableExist'><div class="tab-pane fade active in" id="misTableExist1"><span class='label label-info'>Replaces:</span> <span class='label label-info'>table_exist?</span>  <p>Will return true or false if the specified table exists in the current database.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Javascript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="misTableExist2"><div><p><strong>Parameters</strong></p><ul><li>tableName : <span class='text-info'>STRING</span><p><p>The name of the table.</p>
 </p></li></ul></div></div><div class="tab-pane fade" id="misTableExist3"></div><div class="tab-pane fade" id="misTableExist4"><div><p><strong>Synchronous Return:</strong></p><ul><li>BOOLEAN</li></ul></div></div><div class="tab-pane fade" id="misTableExist6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-file"></i>Instance Method: This method can be accessed via an instance object of this class: <ul><li><code>myObject.isTableExist(<span class="text-info">STRING</span> tableName)</code></li></ul></li></ul></div></div></div>  </div><a name ='mrollbackTransaction'/><div class=' method  js ruby android ios wp8' id='mrollbackTransaction'><h3><strong  ><span class="text-info">rollbackTransaction</span></strong><span style='font-size:.7em;font-weight:normal;'>()</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#mrollbackTransaction1" data-toggle="tab">Description</a></li><li ><a href="#mrollbackTransaction4" data-toggle="tab">Return</a></li><li ><a href="#mrollbackTransaction6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-rollbackTransaction'><div class="tab-pane fade active in" id="mrollbackTransaction1"><span class='label label-info'>Replaces:</span> <span class='label label-info'>rollback</span>  <p>Rollback database transaction. This will cancel any pending actions to the database that were executed since the last Start and before a commit.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Javascript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mrollbackTransaction2"></div><div class="tab-pane fade" id="mrollbackTransaction3"></div><div class="tab-pane fade" id="mrollbackTransaction4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mrollbackTransaction6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-file"></i>Instance Method: This method can be accessed via an instance object of this class: <ul><li><code>myObject.rollbackTransaction()</code></li></ul></li></ul></div></div></div>  </div><a name ='mstartTransaction'/><div class=' method  js ruby android ios wp8' id='mstartTransaction'><h3><strong  >startTransaction</strong><span style='font-size:.7em;font-weight:normal;'>()</span></h3><ul class="nav nav-tabs" style="padding-left:8px"><li class='active'><a href="#mstartTransaction1" data-toggle="tab">Description</a></li><li ><a href="#mstartTransaction4" data-toggle="tab">Return</a></li><li ><a href="#mstartTransaction6" data-toggle="tab">Access</a></li></ul><div class='tab-content' style='padding-left:8px' id='tc-startTransaction'><div class="tab-pane fade active in" id="mstartTransaction1"><p>Start database transaction. All operations will not be the saved to the database until a commit is executed.</p>
<p><div><p><img src="/img/js.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Javascript"><img src="/img/ruby.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Ruby"><img src="/img/android.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Android"><img src="/img/ios.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="iphone, ipod touch, ipad"><img src="/img/windowsmobile.png" style="height: 20px;padding-top: 8px" rel="tooltip" title="Windows Mobile, Windows CE, Windows Embedded"><img src="/img/wp8.png" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Phone 8, Windows Embedded 8"><img src="/img/windows.jpg" style="width: 20px;padding-top: 8px" rel="tooltip" title="Windows Desktop"></p></div></p></div><div class="tab-pane fade" id="mstartTransaction2"></div><div class="tab-pane fade" id="mstartTransaction3"></div><div class="tab-pane fade" id="mstartTransaction4"><div><p><strong>Synchronous Return:</strong></p><ul><li>Void</li></ul></div></div><div class="tab-pane fade" id="mstartTransaction6"><div><p><strong>Method Access:</strong></p><ul><li><i class="icon-file"></i>Instance Method: This method can be accessed via an instance object of this class: <ul><li><code>myObject.startTransaction()</code></li></ul></li></ul></div></div></div>  </div></div>
<a name='Examples'></a>
<h2><i class='icon-edit'></i>Examples</h2>

<a name='e0'></a><div class=' example' id='e0'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample0"><strong>Using Transactions</strong></div><div id="cExample0" class="accordion-body">  <div class="accordion-inner">
<p>To insert/update multiple object/models use database transactions. This is the most performant method to initialize your application with a large set of data.</p>
<ul class='nav nav-tabs' id='exI0-S0Tab'><li class='active'><a href='#exI0-S0JS' data-toggle='tab'>Javascript</a></li><li ><a href='#exI0-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content'><div class='tab-pane active' id='exI0-S0JS'><pre class='CodeRay'><code>:::javascript

                
var db = Rho.Database;
db.startTransaction();
try
{
  for (var index in items) {
    // create hash of attribute/value pairs
    data = {
      field1 : item[index].value1, 
      field2 : item[index].value2
    }; 
    // Creates a new itemModel object and saves it
    new_item = itemModel.create(data);
  }
  
 db.commitTransaction();
}
catch
{
 db.rollbackTransaction();
}

              </code></pre></div><div class='tab-pane' id='exI0-S0RUBY'><pre class='CodeRay'><code>:::ruby

                
db = Rho::Database
  db.startTransaction
  begin
    items.each do |item|
      # create hash of attribute/value pairs
      data = {
        :field1 =&gt; item['value1'], 
        :field2 =&gt; item['value2'] 
      } 
      # Creates a new itemModel object and saves it
      new_item = itemModel.create(data)
    end
   db.commitTransaction
  rescue
   db.rollbackTransaction
  end
  
              </code></pre></div></div>  </div></div></div></div><a name='e1'></a><div class=' example' id='e1'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample1"><strong>Open and close database</strong></div><div id="cExample1" class="accordion-body">  <div class="accordion-inner">
<p>The following example opens the database using the <code>constructor</code> method: .initialize. It then closes the database using the destructor method <code>.close()</code></p>
<ul class='nav nav-tabs' id='exI1-S0Tab'><li class='active'><a href='#exI1-S0JS' data-toggle='tab'>Javascript</a></li><li ><a href='#exI1-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content'><div class='tab-pane active' id='exI1-S0JS'><pre class='CodeRay'><code>:::javascript

                
var db = new Rho.Database(Rho.Application.databaseFilePath('test'), 'test');
db.close();

              </code></pre></div><div class='tab-pane' id='exI1-S0RUBY'><pre class='CodeRay'><code>:::ruby

                
db = Rho::Database.new(Rho::Application.databaseFilePath('test'), 'test')
db.close()

              </code></pre></div></div>  </div></div></div></div><a name='e2'></a><div class=' example' id='e2'><div class="accordion-group"><div class="accordion-heading"><span class="accordion-toggle"   href="#cExample2"><strong>destroyTables</strong></div><div id="cExample2" class="accordion-body">  <div class="accordion-inner">
<p>Destroy multiple tables. The following example opens the database using the <code>constructor</code> method: .initialize.</p>
<ul class='nav nav-tabs' id='exI2-S0Tab'><li class='active'><a href='#exI2-S0JS' data-toggle='tab'>Javascript</a></li><li ><a href='#exI2-S0RUBY' data-toggle='tab'>Ruby</a></li></ul><div class='tab-content'><div class='tab-pane active' id='exI2-S0JS'><pre class='CodeRay'><code>:::javascript

                
var db = new Rho.Database(...);

// destroy all tables in database
db.destroyTables({include: [], exclude: []});

// destroy specified tables
db.destroyTables({include: ['table1', 'table2'], exclude: []});

// destroy all but specified tables
db.destroyTables({include: [], exclude: ['table1', 'table2']});

              </code></pre></div><div class='tab-pane' id='exI2-S0RUBY'><pre class='CodeRay'><code>:::ruby

                
db = Rho::Database.new(...)

# destroy all tables in database
db.destroyTables(:include =&gt; [], :exclude =&gt; [])

# destroy specified tables
db.destroyTables(:include =&gt; ['table1', 'table2'], :exclude =&gt; [])

# destroy all but specified tables
db.destroyTables(:include =&gt; [], :exclude =&gt; ['table1', 'table2'])

              </code></pre></div></div>  </div></div></div></div></div>