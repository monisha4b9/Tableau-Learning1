$pkg_name="tableau-learning"
$pkg_version="10.3.2"
$string_v = $pkg_version-replace("\.", "-")
$pkg_origin="monisha"
$pkg_upstream_url="https://downloads.tableau.com/esdalt/$pkg_version/TableauServer-64bit-$string_v.exe"
$pkg_description = "Tableau"
$pkg_bin_dirs = @("bin")
#$outfile="$PLAN_CONTEXT"

function Invoke-Download 
{
  Write-Host "Downloading $pkg_upstream_url"
 #Invoke-WebRequest -Uri $pkg_upstream_url -OutFile $outfile
 
}

function Invoke-Verify { }

function Invoke-Build { }
function Invoke-Install 
{

#write-host "$PLAN_CONTEXT"
  $exe="$PLAN_CONTEXT\TableauServer-64bit-$string_v.exe"

#Copy-Item $exe $pkg_prefix/bin

  #$log = "$pkg_prefix/install.log"
  #Start-Process -FilePath $exe -ArgumentList "/VERYSILENT", "/ACCEPTEULA", "/SUPPRESSMSGBOXES", "/DIR=$pkg_prefix/bin", "/LOG=$log"

  # do {
  #   Write-Host "Waiting for installation to finish"
  #   Start-Sleep -Seconds 1
  # } while (!(Get-Content $log | Select-String $finished))
}



