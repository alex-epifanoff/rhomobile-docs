# Rhom API

Allows access to the Rhodes mini database object mapper, performing database operation on Rhodes model objects. See the [Rhom examples](../rhodes/rhom#rhom-api) for examples of the Rhom API.

**NOTE: As of Rhodes version 3.3.3, the [Barcode](barcode-api), [NFC](../rhodes/device-caps#nfc), and [Signature Capture](../rhodes/device-caps#signature-capture) APIs, as well as [Rhom data encryption](../rhodes/rhom#database-encryption) are removed from Rhodes. These features are only supported in Zebra RhoMobile Suite. If you wish to use these features, you will need to [upgrade to RhoMobile Suite](../rhomobile-install). Your application's build.yml will also need to be modified to [indicate the application type is 'Rhoelements'](../rhoelements/rhoelements2-native#enabling-motorola-device-capabilities). Additionally, a [RhoElements license](../rhoelements/licensing) is required.**

## client_id

Returns the current sync client id.

	:::ruby
	modelname.client_id

## clear_notification

Clear notification for the object. See the [sync notification section](../rhodes/synchronization#notifications) for more details.

	:::ruby
	modelname.clear_notification

## database_export

Creates a zip archive of a local database partition with all its blob objects, and returns a path to that zip archive.

	:::ruby
	Rhom::Rhom.database_export(partition)

<table border="1">
<tr>
	<td><code>partition</code></td>
	<td>a local database partition.</td>
</tr>
</table>

## database_import

Imports the database and blob objects from a zip archive created with `database_export`. If the imported archive is inconsistent, or other failure occurs during the import process, the original database will be restored.

	:::ruby
	Rhom::Rhom.database_import(partition, path_to_zip)

<table border="1">
<tr>
	<td><code>partition</code></td>
	<td>the local database partition to be replaced by the zip.</td>
</tr>
<tr>
	<td><code>path_to_zip</code></td>
	<td>path to the zip archive created with database_export.</td>
</tr>
</table>

## delete_all

Delete all Rhodes model objects for a source, filtering by conditions. Click here for a [Rhom delete_all example](../rhodes/rhom#rhom-delete-example).

	:::ruby
	modelname.delete_all(:conditions, :op)

<table border="1">
<tr>
	<td><code>:conditions</code></td>
	<td>(optional) hash of attribute/values; delete only objects matching these criteria, such as <code>:conditions => {'industry'=>'electronics'}</code>.</td>
</tr>
<tr>
	<td><code>:op</code></td>
	<td>(optional) operator, such as "OR" or "IN". Allows you to have more than one set of conditions.</td>
</tr>
</table>

## destroy

Destroy a Rhodes model object. Click here for a [Rhom destroy example](../rhodes/rhom#rhom-delete-example).

	:::ruby
	modelname.destroy

## find

Find Rhodes model objects. Click here for a [Rhom find example](../rhodes/rhom#rhom-find-example).

	:::ruby
	modelname.find(argument list)

The argument list can consist of the following arguments.

<table border="1">
<tr>
	<td><code>:all</code></td>
	<td>returns all objects; can use optional <code>:conditions</code>.</td>
</tr>
<tr>
	<td><code>:first</code></td>
	<td>returns first object matching <code>:conditions</code>.</td>
</tr>
<tr>
	<td><code>:count</code></td>
	<td>returns the number of objects matching these <code>:conditions</code>.</td>
</tr>
<tr>
	<td><code>:conditions</code></td>
	<td>(optional) hash of attribute/values. Also supports sql fragments (i.e. "name like 'rhomobile'") or sql fragment with binding (you have to define :select with sql queries) (i.e. ["name like ?", "'#{company#}'"]) Use a comma around string values.</td>
</tr>
<tr>
	<td><code>:order</code></td>
	<td>(optional) attribute(s) to order the list.</td>
</tr>
<tr>
	<td><code>:orderdir</code></td>
	<td>(optional) Order direction: 'ASC' ascending, 'DESC' descending. Default = 'ASC'.)</td>
</tr>
<tr>
	<td><code>:select</code></td>
	<td>(optional) array of string attributes to return with the object. Useful if your model has many attributes and your query only needs a few of them.</td>
</tr>
<tr>
	<td><code>:per_page</code></td>
	<td>(optional) maximum number of items to return.</td>
</tr>
<tr>
	<td><code>:offset</code></td>
	<td>(optional) offset from beginning of the list.</td>
</tr>
<tr>
	<td><code>:op</code></td>
	<td>(optional) operator, such as "OR" or "IN". Allows you to have more than one set of conditions.</td>
</tr>
</table>

For examples of find with advanced queries, see [Advanced Queries in Using the Local Database with Rhom](../rhodes/rhom#advanced-queries).

## find_all

Alias for modelname.find(:all, argument list).

## find_by_sql

Returns Rhodes model object(s) based on sql_query. This method works only for schema models. Click here for a [Rhom find_by_sql example](../rhodes/rhom#rhom-findsql-example).

	:::ruby
	modelname.find_by_sql(sql_query)

<table border="1">
<tr>
	<td><code>sql_query</code></td>
	<td>An sql query, such as <code>"SELECT * FROM Account"</code>.</td>
</tr>
</table>

## get_source_id

Returns the source id number for this Rhodes model object.

	:::ruby
	modelname.get_source_id

## get_source_name

Returns the source name for this Rhodes model object.

	:::ruby
	modelname.get_source_name

## new

Create a new Rhodes model object. [Rhom new example](../rhodes/rhom#rhom-new-example).

	:::ruby
	modelname.new(attributes)

<table border="1">
<tr>
	<td><code>attributes</code></td>
	<td>List of attributes assigned to the new model object, such as <code>{"name" => "ABC Inc.","address" => "555 5th St."}</code>.</td>
</tr>
</table>

## create

Create a new Rhodes model object and save it to the database.[Rhom create example](../rhodes/rhom#rhom-create-example).

**NOTE: This is the fastest way to insert a single item into the database.**

	:::ruby
	modelname.create(attributes)

<table border="1">
<tr>
	<td><code>attributes</code></td>
	<td>List of attributes assigned to the new model object, such as <code>{"name" => "ABC Inc.","address" => "555 5th St."}</code>.</td>
</tr>
</table>

## paginate

Call `find` with a limit on the number of records. Default page size is 10.[Rhom paginate example](../rhodes/rhom#rhom-paginate-example).

	:::ruby
	modelname.paginate(*arguments)

The *arguments you can use are:

<table border="1">
<tr>
	<td><code>:page</code></td>
	<td>which page to return.</td>
</tr>
<tr>
	<td><code>:per_page</code></td>
	<td>with :page (used as offset), the number of records to return, such as <code>:page => 1, :per_page => 20</code>
</tr>
<tr>
	<td><code>:conditions</code></td>
	<td>same as find with <code>:conditions</code></td>
</tr>
<tr>
	<td><code>:order</code></td>
	<td>same as find with <code>:order</code></td>
</tr>
<tr>
	<td><code>:select</code></td>
	<td>same as find with <code>:select</code></td>
</tr>
</table>

## sync

Start the sync process for a Rhodes model. Click here for a [Rhom sync example](../rhodes/rhom#rhom-sync-example).

	:::ruby
	modelname.sync(callback_url, callback_data, show_status_popup, query_params)

<table border="1">
<tr>
	<td><code>callback_url</code></td>
	<td>the url for the sync callback method. If this is used, SyncEngine.set_notification is called before SyncEngine.dosync.</td>
</tr>
<tr>
	<td><code>callback_data</code></td>
	<td>Data for the callback method.</td>
</tr>
<tr>
	<td><code>show_status_popup</code></td>
	<td>true if you want to show a popup window upon sync, false otherwise.</td>
</tr>
<tr>
	<td><code>query_params</code></td>
	<td>Optional. a query to pass to the sync server. The query_params value must be URL encoded.</td>
</tr>
</table>

## can_modify

Returns true if the Rhodes model object is not currently being synced (if it is being synced, you should disable editing of the object). Click here for a [Rhom can_modify example](../rhodes/rhom#rhom-canmodify-example).

Before displaying an edit page for an object, your application can check if the object is currently being accessed by the sync process. If it is, you should disable editing of the object. `can_modify` could return true, for example, on a new local record that was created and sent to the RhoConnect application, but no response has been received yet.

	:::ruby
	modelname.can_modify

## changed?

Returns true if a Rhodes model object has local database changes that need to be synchronized, false otherwise. Click here for a [Rhom changed? example](../rhodes/rhom#rhom-changed-example).

	:::ruby
	modelname.changed?

## save

Saves the current Rhodes model object to the database. Click here for a [Rhom save example](../rhodes/rhom#rhom-save-example).

	:::ruby
	modelname.save

## set_notification

Set a notification to be called when the sync is complete for this model. Click here for a [Rhom set_notification example](../rhodes/rhom#rhom-save-example).

	:::ruby
	modelname.set_notification(callback_url, params)

<table border="1">
<tr>
	<td><code>callback_url</code></td>
	<td>the url for your sync is finished notification callback method.</td>
</tr>
<tr>
	<td><code>params</code></td>
	<td>parameters for the callback method.</td>
</tr>
</table>

## update_attributes

Updates the current Rho model object attributes and saves it to the database. This is the fastest way to add or update model attributes. Click here for a [Rhom update_attributes example](../rhodes/rhom#rhom-update-example).

	:::ruby
	modelname.update_attributes(attributes)

<table border="1">
<tr>
	<td><code>attributes</code></td>
	<td>List of attributes and their updated values, such as <code>{"name" => "ABC Inc.","address" => "555 5th St."}</code>.</td>
</tr>
</table>

## database_fullclient_reset_and_logout

Reset the Rhodes model database and logout. Equivalent to `Rhom::Rhom.database_full_reset(true)` followed by `SyncEngine.logout`.

## database_full_reset

Deletes all records from the property bag and model tables. For examples, see [Resetting the Database in Using the Local Database with Rhom](../rhodes/rhom#resetting-the-database).

	:::ruby
	Rhom::Rhom.database_full_reset(reset_client_info, reset_local_models)

<table border="1">
<tr>
	<td><code>reset_client_info</code></td>
	<td>true to clean the client_info table, false otherwise.</td>
</tr>
<tr>
	<td><code>reset_local_models</code></td>
	<td>true to clean local (non-synced) models, false otherwise.</td>
</tr>
</table>

## database_full_reset_and_logout

Perform a full reset, then logout the RhoConnect client.

	:::ruby
	Rhom::Rhom.database_full_reset_and_logout

## database_local_reset

Reset only local (non-sync-enabled) models.

	:::ruby
	Rhom::Rhom.database_local_reset

## metadata

Returns the [metadata definition](../rhoconnect/metadata#metadata-definition) for a given model as a hash. Click here for a [Rhom metadata example](../rhodes/rhom#rhom-metadata-example).

	:::ruby
	Product.metadata
	#=> {'foo' => 'bar'}
	
## metadata=(metadata_def)

Assigns the JSON [metadata definition](../rhoconnect/metadata#metadata-definition) for a given model. Click here for a [Rhom metadata example](../rhodes/rhom#rhom-metadata-example).

	:::ruby
	Product.metadata = { 'foo' => 'bar' }.to_json

<table border="1">
<tr>
	<td><code>metadata_def</code></td>
	<td>JSON string of the metadata definition</td>
</tr>
</table>