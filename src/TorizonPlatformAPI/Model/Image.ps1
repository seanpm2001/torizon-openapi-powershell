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

.PARAMETER Filepath
No description available.
.PARAMETER Fileinfo
No description available.
.OUTPUTS

Image<PSCustomObject>
#>

function Initialize-TorizonPlatformAPIImage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Filepath},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Fileinfo}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIImage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Filepath) {
            throw "invalid value for 'Filepath', 'Filepath' cannot be null."
        }

        if ($null -eq $Fileinfo) {
            throw "invalid value for 'Fileinfo', 'Fileinfo' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "filepath" = ${Filepath}
            "fileinfo" = ${Fileinfo}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Image<PSCustomObject>

.DESCRIPTION

Convert from JSON to Image<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Image<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToImage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIImage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPIImage
        $AllProperties = ("filepath", "fileinfo")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'filepath' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filepath"))) {
            throw "Error! JSON cannot be serialized due to the required property 'filepath' missing."
        } else {
            $Filepath = $JsonParameters.PSobject.Properties["filepath"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fileinfo"))) {
            throw "Error! JSON cannot be serialized due to the required property 'fileinfo' missing."
        } else {
            $Fileinfo = $JsonParameters.PSobject.Properties["fileinfo"].value
        }

        $PSO = [PSCustomObject]@{
            "filepath" = ${Filepath}
            "fileinfo" = ${Fileinfo}
        }

        return $PSO
    }

}

