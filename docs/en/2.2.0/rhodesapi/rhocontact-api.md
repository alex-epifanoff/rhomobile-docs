# RhoContact API

Provides access to a device's phone book and contacts. For a code example, see the view and controller in the [/app/Contacts folder in the System API Samples](https://github.com/rhomobile/rhodes-system-api-samples/blob/master/app/Contacts/controller.rb) application. For other examples, refer to [PIM Contacts in Rhodes Device Capabilities](../rhodes/device-caps#pim-contacts).

## Enabling the Contacts

To use the RhoContact API, you need to enable read and write for the contacts on the device. Do this by adding that capability to the build.yml file:

	:::yaml
	capabilities:
	  - pim

## find

Returns the contacts in the device phone book. 

	:::ruby
	Rho::RhoContact.find(argument list)

The argument list can consist of the following arguments.

<table border="1">
<tr>
	<td><code>:all</code></td>
	<td>Return a hash of hashes of all the contacts in the phonebook.</td>	
</tr>
<tr>
	<td><code>id</code></td>
	<td>return a hash of the properties of the contact identified by this id.</td>	
</tr>
</table>

**NOTE: It is allowed to pass additional params hash on all platforms. Platforms that do not have the extended functionality will just skip these.**


For Android and iOS, you can have the following arguments.

<table border="1">
<tr>
	<td><code>:first</code></td>
	<td>return the first contact in the list.</td>	
</tr>
<tr>
	<td><code>:count</code></td>
	<td>return the total number of contacts in the list.</td>	
</tr>
</table>

When you use the `:all`, `:first`, or `:count` arguments with Android or iOS, you can also use the following optional arguments to paginate the contact list. If used with :count, the exact number of returned contacts can be determined (for example for last page).

<table border="1">
<tr>
	<td><code>:per_page</code></td>
	<td>maximum number of contacts to return.</td>	
</tr>
<tr>
	<td><code>:offset</code></td>
	<td>offset from the beginning of the list.</td>
</tr>
<tr>
	<td><code>:max_results</code></td>
	<td>used with :count. maximum number of contacts to be returned.</td>
</tr>
<tr>
	<td><code>:select</code></td>
	<td>Android only. array of string attributes to return with the object. Useful if your contacts have many attributes and your query only needs a few of them. Sample call: <code>companylastnamelist = Phonebook.find(:all, :select => ['last_name','company_name'])</code>
	</td>	
</tr>
<tr>
	<td><code>:conditions</code></td>
	<td>Android only. A hash of conditions.</code>
	</td>	
</tr>
</table>

Refer to [Find Conditions](#find-conditions) for the :conditions settings.

## create!

Create a new contact in the phonebook, setting its properties passed as a parameter hash. Returns the new contact as a hash.

	:::ruby
	Rho::RhoContact.create!(contact)

<table border="1">
<tr>
	<td><code>contact</code></td>
	<td>A hash containing the contact properties.</td>
</tr>
</table>

## destroy

Delete this contact from the phonebook.

	:::ruby
	Rho::RhoContact.destroy(id)

<table border="1">
<tr>
	<td><code>id</code></td>
	<td>Delete the contact identified by this id</td>
</tr>
</table>

## update_attributes

Find contact record in the phonebook, update record properties from the hash passed as parameter, and save updated record. Contact id passed in the hash.

	:::ruby
	Rho::RhoContact.update_attributes(contact)

<table border="1">
<tr>
	<td><code>contact</code></td>
	<td>A hash containing the contact properties to change for this contact.</td>
</tr>
</table>

## Contact Properties

The contact properties are stored in a hash.

<table border="1">
<tr>
	<td><code>id</code></td>
	<td>int. The id for this contact.</td>
</tr>
<tr>
	<td><code>first_name</code></td>
	<td>String. The first name for this contact.</td>
</tr>
<tr>
	<td><code>last_name</code></td>
	<td>String. The last name for this contact.</td>
</tr>
<tr>
	<td><code>mobile_number</code></td>
	<td>String. The mobile phone number for this contact.</td>
</tr>
<tr>
	<td><code>business_number</code></td>
	<td>String. The business phone number for this contact.</td>
</tr>
<tr>
	<td><code>email_address</code></td>
	<td>String. The email address for this contact. On iPhone, mapped to "work".</td>
</tr>
<tr>
	<td><code>company_name</code></td>
	<td>String. The company name for this contact.</td>
</tr>
</table>

## Additional Contact Properties for Android Nexus

Android uses these contact properties (stored in a hash).

<table border="1">
<tr>
	<td><code>display_name</code></td>
	<td>String. The display name for this contact.</td>
</tr>
<tr>
	<td><code>home_number</code></td>
	<td>String. The home phone number for this contact.</td>
</tr>
</table>

## Additional Contact Properties for iPhone

<table border="1">
<tr>
	<td><code>prefix</code></td>
	<td>String. The prefix for the name, such as "Mr."</td>
</tr>
<tr>
	<td><code>middle_name</code></td>
	<td>String. The middle name for this contact.</td>
</tr>
<tr>
	<td><code>suffix</code></td>
	<td>String. The suffix for this contact, such as "Jr."</td>
</tr>
<tr>
	<td><code>nickname</code></td>
	<td>String. The nickname for this contact.</td>
</tr>
<tr>
	<td><code>birthday</code></td>
	<td>String. The birthday for this contact, formatted as YYYY-MM-DD.</td>
</tr>
<tr>
	<td><code>anniversary</code></td>
	<td>String. The anniversary for this contact, formatted as YYYY-MM-DD.</td>
</tr>
<tr>
	<td><code>created</code></td>
	<td>String. The date this contact was created, formatted as YYYY-MM-DD.</td>
</tr>
<tr>
	<td><code>updated</code></td>
	<td>String. The most recent date this contact was updated, formatted as YYYY-MM-DD.</td>
</tr>
<tr>
	<td><code>company_name</code></td>
	<td>String. The company name for this contact.</td>
</tr>
<tr>
	<td><code>job_title</code></td>
	<td>String. The job title for this contact.</td>
</tr>
<tr>
	<td><code>assistant_name</code></td>
	<td>String. The name of the assistant for this contact.</td>
</tr>
<tr>
	<td><code>assistant_number</code></td>
	<td>String. The phone number of the assistant for this contact.</td>
</tr>
<tr>
	<td><code>spouse_name</code></td>
	<td>String. The name of the spouse for this contact.</td>
</tr>
<tr>
	<td><code>person_note</code></td>
	<td>String. A note for this contact.</td>
</tr>
<tr>
	<td><code>home_email_address</code></td>
	<td>String. Home email address for this contact.</td>
</tr>
<tr>
	<td><code>other_email_address</code></td>
	<td>String. Other email address for this contact.</td>
</tr>
<tr>
	<td><code>other_email_address</code></td>
	<td>String. Other email address for this contact.</td>
</tr>
<tr>
	<td><code>home_page</code></td>
	<td>String. url of the contact's home page.</td>
</tr>
<tr>
	<td><code>main_number</code></br>
		<code>pager_number</code></br>
		<code>home_fax</code></br>
		<code>work_fax</code></br>
	</td>
	<td>Strings. Additional phone numbers for iPhone.</td>
</tr>
</table>

## Additional Address Properties for iPhone

<table border="1">
<tr>
	<td><code>Address properties mapped to "work"</code></td>
	<td>Strings. "street_address_1", "city_1", "state_1", "zip_1", "country_1"</td>
</tr>
<tr>
	<td><code>Address properties mapped to "home"</code></td>
	<td>Strings. "street_address_2", "city_2", "state_2", "zip_2", "country_2"</td>
</tr>
<tr>
	<td><code>Address properties mapped to "other"</code></td>
	<td>Strings. "street_address_3", "city_3", "state_3", "zip_3", "country_3"</td>
</tr>
</table>

## Find Conditions

The `:conditions` parameter, for Android platforms, is a hash of conditions. The keys of the hash are contact property selectors (condition to be applied to), and the values are the conditions.

The property selectors are:
- :phone
- :email

The following conditions are currently supported:
- 'not_nil'
- 'is_nil'

A property selector has no one-to-one relation to a single contact property like mobile_phone or email_address. The selectors are mapped to a whole property group, like all phones or all emails (support for several emails may be implemented in future).

A condition like the following code will select all contacts which have at least one phone.
	:::ruby
	@count = Rho::RhoContact.find(:count, :conditions => {:phone => 'not_nil'})

**NOTE: It may be useful to sort received contacts (especially if paginated). Contacts is ordered by 'display_name' column and then split for pages. Unfortunately, the order inside the page is lost while passing the list to ruby.**


