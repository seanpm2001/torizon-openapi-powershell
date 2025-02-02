#
# Torizon OTA
#  This API is rate limited and will return the following headers for each API call.    - X-RateLimit-Limit - The total number of requests allowed within a time period   - X-RateLimit-Remaining - The total number of requests still allowed until the end of the rate limiting period   - X-RateLimit-Reset - The number of seconds until the limit is fully reset  In addition, if an API client is rate limited, it will receive a HTTP 420 response with the following header:     - Retry-After - The number of seconds to wait until this request is allowed  
# Version: 2.0-Beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Var2
No description available.
.PARAMETER Var1
No description available.
.OUTPUTS

Tuple2DeviceTagIdDeviceTagValue<PSCustomObject>
#>

function Initialize-TorizonPlatformAPITuple2DeviceTagIdDeviceTagValue {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Var2},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Var1}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPITuple2DeviceTagIdDeviceTagValue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Var2) {
            throw "invalid value for 'Var2', 'Var2' cannot be null."
        }

        if ($null -eq $Var1) {
            throw "invalid value for 'Var1', 'Var1' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "_2" = ${Var2}
            "_1" = ${Var1}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Tuple2DeviceTagIdDeviceTagValue<PSCustomObject>

.DESCRIPTION

Convert from JSON to Tuple2DeviceTagIdDeviceTagValue<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Tuple2DeviceTagIdDeviceTagValue<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToTuple2DeviceTagIdDeviceTagValue {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPITuple2DeviceTagIdDeviceTagValue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPITuple2DeviceTagIdDeviceTagValue
        $AllProperties = ("_2", "_1")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property '_2' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_2"))) {
            throw "Error! JSON cannot be serialized due to the required property '_2' missing."
        } else {
            $Var2 = $JsonParameters.PSobject.Properties["_2"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_1"))) {
            throw "Error! JSON cannot be serialized due to the required property '_1' missing."
        } else {
            $Var1 = $JsonParameters.PSobject.Properties["_1"].value
        }

        $PSO = [PSCustomObject]@{
            "_2" = ${Var2}
            "_1" = ${Var1}
        }

        return $PSO
    }

}

