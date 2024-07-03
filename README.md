# TorizonPlatformAPI - the PowerShell module for the Torizon OTA


This API is rate limited and will return the following headers for each API call.

  - X-RateLimit-Limit - The total number of requests allowed within a time period
  - X-RateLimit-Remaining - The total number of requests still allowed until the end of the rate limiting period
  - X-RateLimit-Reset - The number of seconds until the limit is fully reset

In addition, if an API client is rate limited, it will receive a HTTP 420 response with the following header:

   - Retry-After - The number of seconds to wait until this request is allowed



This PowerShell module is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0-Beta
- SDK version: 0.2.2
- Generator version: 7.8.0-SNAPSHOT
- Build package: org.openapitools.codegen.languages.PowerShellClientCodegen

<a id="frameworks-supported"></a>
## Frameworks supported
- PowerShell 6.2 or later

<a id="dependencies"></a>
## Dependencies

<a id="installation"></a>
## Installation


To install from the source, run the following command to build and install the PowerShell module locally:
```powershell
Build.ps1
Import-Module -Name '.\src\TorizonPlatformAPI' -Verbose
```

To avoid function name collision, one can use `-Prefix`, e.g. `Import-Module -Name '.\src\TorizonPlatformAPI' -Prefix prefix`

To uninstall the module, simply run:
```powershell
Remove-Module -FullyQualifiedName @{ModuleName = "TorizonPlatformAPI"; ModuleVersion = "0.2.2"}
```

<a id="tests"></a>
## Tests

To install and run `Pester`, please execute the following commands in the terminal:

```powershell
Install-module -name Pester -force

Invoke-Pester
```

For troubleshooting, please run `$DebugPreference = 'Continue'` to turn on debugging and disable it with `$DebugPreference = 'SilentlyContinue'` when done with the troubleshooting.

## Documentation for API Endpoints

All URIs are relative to *https://app.torizon.io/api/v2beta*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*TorizonPlatformAPIDeviceMetricsApi* | [**Get-TorizonPlatformAPIDeviceDataDevicesDeviceuuidMetrics**](docs/TorizonPlatformAPIDeviceMetricsApi.md#Get-TorizonPlatformAPIDeviceDataDevicesDeviceuuidMetrics) | **GET** /device-data/devices/{deviceUuid}/metrics | Get metrics data from a single device
*TorizonPlatformAPIDeviceMetricsApi* | [**Get-TorizonPlatformAPIDeviceDataFleetsFleetidMetrics**](docs/TorizonPlatformAPIDeviceMetricsApi.md#Get-TorizonPlatformAPIDeviceDataFleetsFleetidMetrics) | **GET** /device-data/fleets/{fleetId}/metrics | Get aggregated metrics data from a fleet of devices
*TorizonPlatformAPIDeviceMetricsApi* | [**Get-TorizonPlatformAPIDeviceDataMetricNames**](docs/TorizonPlatformAPIDeviceMetricsApi.md#Get-TorizonPlatformAPIDeviceDataMetricNames) | **GET** /device-data/metric-names | Get the list of metrics available in your repository
*TorizonPlatformAPIDevicesApi* | [**Invoke-TorizonPlatformAPIDeleteDevicesDeviceuuid**](docs/TorizonPlatformAPIDevicesApi.md#Invoke-TorizonPlatformAPIDeleteDevicesDeviceuuid) | **DELETE** /devices/{deviceUuid} | Delete a single device
*TorizonPlatformAPIDevicesApi* | [**Get-TorizonPlatformAPIDevices**](docs/TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevices) | **GET** /devices | Query device information
*TorizonPlatformAPIDevicesApi* | [**Get-TorizonPlatformAPIDevicesDeviceuuid**](docs/TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesDeviceuuid) | **GET** /devices/{deviceUuid} | Get detailed information about a single device
*TorizonPlatformAPIDevicesApi* | [**Get-TorizonPlatformAPIDevicesNameDeviceuuid**](docs/TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesNameDeviceuuid) | **GET** /devices/name/{deviceUuid} | Get the display name of a single device
*TorizonPlatformAPIDevicesApi* | [**Get-TorizonPlatformAPIDevicesNetwork**](docs/TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesNetwork) | **GET** /devices/network | Get network information for many devices
*TorizonPlatformAPIDevicesApi* | [**Get-TorizonPlatformAPIDevicesNetworkDeviceuuid**](docs/TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesNetworkDeviceuuid) | **GET** /devices/network/{deviceUuid} | Get network information for a single device
*TorizonPlatformAPIDevicesApi* | [**Get-TorizonPlatformAPIDevicesNotesDeviceuuid**](docs/TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesNotesDeviceuuid) | **GET** /devices/notes/{deviceUuid} | Get the device notes for a specific device
*TorizonPlatformAPIDevicesApi* | [**Get-TorizonPlatformAPIDevicesPackages**](docs/TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesPackages) | **GET** /devices/packages | Get information about the installed packages for many devices
*TorizonPlatformAPIDevicesApi* | [**Get-TorizonPlatformAPIDevicesPackagesDeviceuuid**](docs/TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesPackagesDeviceuuid) | **GET** /devices/packages/{deviceUuid} | Get information about the installed packages for a single device
*TorizonPlatformAPIDevicesApi* | [**Get-TorizonPlatformAPIDevicesToken**](docs/TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesToken) | **GET** /devices/token | Retrieve device provisioning token
*TorizonPlatformAPIDevicesApi* | [**Get-TorizonPlatformAPIDevicesUptaneDeviceuuidAssignment**](docs/TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesUptaneDeviceuuidAssignment) | **GET** /devices/uptane/{deviceUuid}/assignment | Show detailed information about the currently-assigned update for a single device
*TorizonPlatformAPIDevicesApi* | [**Get-TorizonPlatformAPIDevicesUptaneDeviceuuidComponents**](docs/TorizonPlatformAPIDevicesApi.md#Get-TorizonPlatformAPIDevicesUptaneDeviceuuidComponents) | **GET** /devices/uptane/{deviceUuid}/components | Get a list of the software components reported by a single device
*TorizonPlatformAPIDevicesApi* | [**Submit-TorizonPlatformAPIDevices**](docs/TorizonPlatformAPIDevicesApi.md#Submit-TorizonPlatformAPIDevices) | **POST** /devices | Manually create a new device
*TorizonPlatformAPIDevicesApi* | [**Send-TorizonPlatformAPIDevicesNameDeviceuuid**](docs/TorizonPlatformAPIDevicesApi.md#Send-TorizonPlatformAPIDevicesNameDeviceuuid) | **PUT** /devices/name/{deviceUuid} | Set the display name of a single device
*TorizonPlatformAPIDevicesApi* | [**Send-TorizonPlatformAPIDevicesNotesDeviceuuid**](docs/TorizonPlatformAPIDevicesApi.md#Send-TorizonPlatformAPIDevicesNotesDeviceuuid) | **PUT** /devices/notes/{deviceUuid} | Set the device notes for a specific device
*TorizonPlatformAPIFleetsApi* | [**Invoke-TorizonPlatformAPIDeleteFleetsFleetid**](docs/TorizonPlatformAPIFleetsApi.md#Invoke-TorizonPlatformAPIDeleteFleetsFleetid) | **DELETE** /fleets/{fleetId} | Delete a fleet
*TorizonPlatformAPIFleetsApi* | [**Invoke-TorizonPlatformAPIDeleteFleetsFleetidDevices**](docs/TorizonPlatformAPIFleetsApi.md#Invoke-TorizonPlatformAPIDeleteFleetsFleetidDevices) | **DELETE** /fleets/{fleetId}/devices | Remove devices from a fleet
*TorizonPlatformAPIFleetsApi* | [**Get-TorizonPlatformAPIFleets**](docs/TorizonPlatformAPIFleetsApi.md#Get-TorizonPlatformAPIFleets) | **GET** /fleets | Get information about all fleets in your repository
*TorizonPlatformAPIFleetsApi* | [**Get-TorizonPlatformAPIFleetsFleetidDevices**](docs/TorizonPlatformAPIFleetsApi.md#Get-TorizonPlatformAPIFleetsFleetidDevices) | **GET** /fleets/{fleetId}/devices | Get information about the devices in a single fleet
*TorizonPlatformAPIFleetsApi* | [**Submit-TorizonPlatformAPIFleets**](docs/TorizonPlatformAPIFleetsApi.md#Submit-TorizonPlatformAPIFleets) | **POST** /fleets | Create a new fleet
*TorizonPlatformAPIFleetsApi* | [**Submit-TorizonPlatformAPIFleetsFleetidDevices**](docs/TorizonPlatformAPIFleetsApi.md#Submit-TorizonPlatformAPIFleetsFleetidDevices) | **POST** /fleets/{fleetId}/devices | Add devices to a fleet
*TorizonPlatformAPIPackagesApi* | [**Invoke-TorizonPlatformAPIDeletePackagesPackageid**](docs/TorizonPlatformAPIPackagesApi.md#Invoke-TorizonPlatformAPIDeletePackagesPackageid) | **DELETE** /packages/{packageId} | Delete a package
*TorizonPlatformAPIPackagesApi* | [**Get-TorizonPlatformAPIPackages**](docs/TorizonPlatformAPIPackagesApi.md#Get-TorizonPlatformAPIPackages) | **GET** /packages | Retrieve metadata about packages in your repository
*TorizonPlatformAPIPackagesApi* | [**Get-TorizonPlatformAPIPackagesExternal**](docs/TorizonPlatformAPIPackagesApi.md#Get-TorizonPlatformAPIPackagesExternal) | **GET** /packages_external | Retrieve metadata about packages in your repository from other sources
*TorizonPlatformAPIPackagesApi* | [**Get-TorizonPlatformAPIPackagesExternalInfo**](docs/TorizonPlatformAPIPackagesApi.md#Get-TorizonPlatformAPIPackagesExternalInfo) | **GET** /packages_external/info | Fetch information about external package sources
*TorizonPlatformAPIPackagesApi* | [**Get-TorizonPlatformAPIPackagesExternalRefreshSourceFileName**](docs/TorizonPlatformAPIPackagesApi.md#Get-TorizonPlatformAPIPackagesExternalRefreshSourceFileName) | **GET** /packages_external/refresh/{source_file_name} | Refresh metadata from an external package source
*TorizonPlatformAPIPackagesApi* | [**Invoke-TorizonPlatformAPIPatchPackagesPackageid**](docs/TorizonPlatformAPIPackagesApi.md#Invoke-TorizonPlatformAPIPatchPackagesPackageid) | **PATCH** /packages/{packageId} | Edit metadata about a package
*TorizonPlatformAPIPackagesApi* | [**Submit-TorizonPlatformAPIPackages**](docs/TorizonPlatformAPIPackagesApi.md#Submit-TorizonPlatformAPIPackages) | **POST** /packages | Upload a new package
*TorizonPlatformAPIUpdatesApi* | [**Get-TorizonPlatformAPILockboxDetails**](docs/TorizonPlatformAPIUpdatesApi.md#Get-TorizonPlatformAPILockboxDetails) | **GET** /lockbox-details | List all existing lockboxes on the repository, and their detailed contents
*TorizonPlatformAPIUpdatesApi* | [**Get-TorizonPlatformAPILockboxes**](docs/TorizonPlatformAPIUpdatesApi.md#Get-TorizonPlatformAPILockboxes) | **GET** /lockboxes | List all existing lockboxes on the repository
*TorizonPlatformAPIUpdatesApi* | [**Get-TorizonPlatformAPILockboxesLockboxName**](docs/TorizonPlatformAPIUpdatesApi.md#Get-TorizonPlatformAPILockboxesLockboxName) | **GET** /lockboxes/{lockbox_name} | Get the raw Uptane metadata for a lockbox
*TorizonPlatformAPIUpdatesApi* | [**Invoke-TorizonPlatformAPIPatchUpdates**](docs/TorizonPlatformAPIUpdatesApi.md#Invoke-TorizonPlatformAPIPatchUpdates) | **PATCH** /updates | Cancel a pending update for one or more devices
*TorizonPlatformAPIUpdatesApi* | [**Submit-TorizonPlatformAPILockboxesLockboxName**](docs/TorizonPlatformAPIUpdatesApi.md#Submit-TorizonPlatformAPILockboxesLockboxName) | **POST** /lockboxes/{lockbox_name} | Define a new lockbox, or update an existing one
*TorizonPlatformAPIUpdatesApi* | [**Submit-TorizonPlatformAPIUpdates**](docs/TorizonPlatformAPIUpdatesApi.md#Submit-TorizonPlatformAPIUpdates) | **POST** /updates | Launch an update to one or more devices or fleets


## Documentation for Models

 - [TorizonPlatformAPI\Model.BadRequestRepr](docs/BadRequestRepr.md)
 - [TorizonPlatformAPI\Model.ClientSignature](docs/ClientSignature.md)
 - [TorizonPlatformAPI\Model.ConflictRepr](docs/ConflictRepr.md)
 - [TorizonPlatformAPI\Model.CreateFleet](docs/CreateFleet.md)
 - [TorizonPlatformAPI\Model.CreateLockboxRequest](docs/CreateLockboxRequest.md)
 - [TorizonPlatformAPI\Model.CustomUpdateData](docs/CustomUpdateData.md)
 - [TorizonPlatformAPI\Model.DelegationInfo](docs/DelegationInfo.md)
 - [TorizonPlatformAPI\Model.DeviceCreateReq](docs/DeviceCreateReq.md)
 - [TorizonPlatformAPI\Model.DeviceInfoBasic](docs/DeviceInfoBasic.md)
 - [TorizonPlatformAPI\Model.DeviceInfoExtended](docs/DeviceInfoExtended.md)
 - [TorizonPlatformAPI\Model.DevicePackage](docs/DevicePackage.md)
 - [TorizonPlatformAPI\Model.DevicePackages](docs/DevicePackages.md)
 - [TorizonPlatformAPI\Model.DeviceSort](docs/DeviceSort.md)
 - [TorizonPlatformAPI\Model.DeviceSortDirection](docs/DeviceSortDirection.md)
 - [TorizonPlatformAPI\Model.DeviceStatus](docs/DeviceStatus.md)
 - [TorizonPlatformAPI\Model.EcuInfoImage](docs/EcuInfoImage.md)
 - [TorizonPlatformAPI\Model.EcuInfoResponse](docs/EcuInfoResponse.md)
 - [TorizonPlatformAPI\Model.EditPackage](docs/EditPackage.md)
 - [TorizonPlatformAPI\Model.ErrorRepresentation](docs/ErrorRepresentation.md)
 - [TorizonPlatformAPI\Model.ExternalPackage](docs/ExternalPackage.md)
 - [TorizonPlatformAPI\Model.FileInfo](docs/FileInfo.md)
 - [TorizonPlatformAPI\Model.Fleet](docs/Fleet.md)
 - [TorizonPlatformAPI\Model.FleetType](docs/FleetType.md)
 - [TorizonPlatformAPI\Model.Image](docs/Image.md)
 - [TorizonPlatformAPI\Model.InstalledPackage](docs/InstalledPackage.md)
 - [TorizonPlatformAPI\Model.JsonSignedPayload](docs/JsonSignedPayload.md)
 - [TorizonPlatformAPI\Model.MetricsResponse](docs/MetricsResponse.md)
 - [TorizonPlatformAPI\Model.NetworkInfo](docs/NetworkInfo.md)
 - [TorizonPlatformAPI\Model.NotFoundRepr](docs/NotFoundRepr.md)
 - [TorizonPlatformAPI\Model.Package](docs/Package.md)
 - [TorizonPlatformAPI\Model.PackageInfo](docs/PackageInfo.md)
 - [TorizonPlatformAPI\Model.PaginationResultDeviceInfoBasic](docs/PaginationResultDeviceInfoBasic.md)
 - [TorizonPlatformAPI\Model.PaginationResultDevicePackages](docs/PaginationResultDevicePackages.md)
 - [TorizonPlatformAPI\Model.PaginationResultExternalPackage](docs/PaginationResultExternalPackage.md)
 - [TorizonPlatformAPI\Model.PaginationResultFleet](docs/PaginationResultFleet.md)
 - [TorizonPlatformAPI\Model.PaginationResultNetworkInfo](docs/PaginationResultNetworkInfo.md)
 - [TorizonPlatformAPI\Model.PaginationResultPackage](docs/PaginationResultPackage.md)
 - [TorizonPlatformAPI\Model.PaginationResultString](docs/PaginationResultString.md)
 - [TorizonPlatformAPI\Model.ProvisionInfo](docs/ProvisionInfo.md)
 - [TorizonPlatformAPI\Model.QueueResponse](docs/QueueResponse.md)
 - [TorizonPlatformAPI\Model.RangeNotSatisfiableRepr](docs/RangeNotSatisfiableRepr.md)
 - [TorizonPlatformAPI\Model.Series](docs/Series.md)
 - [TorizonPlatformAPI\Model.SeriesMeta](docs/SeriesMeta.md)
 - [TorizonPlatformAPI\Model.SignatureMethod](docs/SignatureMethod.md)
 - [TorizonPlatformAPI\Model.SimpleDeviceInfo](docs/SimpleDeviceInfo.md)
 - [TorizonPlatformAPI\Model.SimpleDeviceNotAffectedInfo](docs/SimpleDeviceNotAffectedInfo.md)
 - [TorizonPlatformAPI\Model.TargetImage](docs/TargetImage.md)
 - [TorizonPlatformAPI\Model.TimeAggregation](docs/TimeAggregation.md)
 - [TorizonPlatformAPI\Model.TimeAggregationMethod](docs/TimeAggregationMethod.md)
 - [TorizonPlatformAPI\Model.Tuple2DeviceTagIdDeviceTagValue](docs/Tuple2DeviceTagIdDeviceTagValue.md)
 - [TorizonPlatformAPI\Model.Tuple2LongOptionDouble](docs/Tuple2LongOptionDouble.md)
 - [TorizonPlatformAPI\Model.UpdateCreateResult](docs/UpdateCreateResult.md)
 - [TorizonPlatformAPI\Model.UpdateRequest](docs/UpdateRequest.md)
 - [TorizonPlatformAPI\Model.UpstreamEndpointErrorRepr](docs/UpstreamEndpointErrorRepr.md)


<a id="documentation-for-authorization"></a>
## Documentation for Authorization


Authentication schemes defined for the API:
<a id="BearerAuth"></a>
### BearerAuth


- **Type**: HTTP Bearer Token authentication

