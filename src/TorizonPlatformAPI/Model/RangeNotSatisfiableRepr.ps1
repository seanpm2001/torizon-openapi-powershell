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

.PARAMETER Description
No description available.
.PARAMETER Msg
No description available.
.PARAMETER ErrorId
No description available.
.PARAMETER Cause
No description available.
.PARAMETER Code
No description available.
.OUTPUTS

RangeNotSatisfiableRepr<PSCustomObject>
#>

function Initialize-TorizonPlatformAPIRangeNotSatisfiableRepr {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Msg},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ErrorId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Cause},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Code}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIRangeNotSatisfiableRepr' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Msg) {
            throw "invalid value for 'Msg', 'Msg' cannot be null."
        }

        if ($null -eq $Code) {
            throw "invalid value for 'Code', 'Code' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "msg" = ${Msg}
            "errorId" = ${ErrorId}
            "cause" = ${Cause}
            "code" = ${Code}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RangeNotSatisfiableRepr<PSCustomObject>

.DESCRIPTION

Convert from JSON to RangeNotSatisfiableRepr<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RangeNotSatisfiableRepr<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToRangeNotSatisfiableRepr {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIRangeNotSatisfiableRepr' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPIRangeNotSatisfiableRepr
        $AllProperties = ("description", "msg", "errorId", "cause", "code")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'msg' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "msg"))) {
            throw "Error! JSON cannot be serialized due to the required property 'msg' missing."
        } else {
            $Msg = $JsonParameters.PSobject.Properties["msg"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "code"))) {
            throw "Error! JSON cannot be serialized due to the required property 'code' missing."
        } else {
            $Code = $JsonParameters.PSobject.Properties["code"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errorId"))) { #optional property not found
            $ErrorId = $null
        } else {
            $ErrorId = $JsonParameters.PSobject.Properties["errorId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cause"))) { #optional property not found
            $Cause = $null
        } else {
            $Cause = $JsonParameters.PSobject.Properties["cause"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "msg" = ${Msg}
            "errorId" = ${ErrorId}
            "cause" = ${Cause}
            "code" = ${Code}
        }

        return $PSO
    }

}

