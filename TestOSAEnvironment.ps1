cls
write-host "`n-------------------------------------------"
write-host " OSA Package Manager requirements checking  "
write-host "-------------------------------------------`n"


##NPM
if (Get-Command npm -errorAction SilentlyContinue) {
    write-host "`nNPM is installed :"
    $npm_prev_v = (npm -v)
}
else
{
	write-host "`nnpm is NOT installed. Please install this if you require npm dependency resolution"
}

if ($npm_prev_v) {

    write-host $npm_prev_v
}
##Nuget
if (Get-Command nuget -errorAction SilentlyContinue) {
    write-host "`nnuget is installed :"
    $nuget_prev_v = (nuget help | select -First 1)
}
else
{
	write-host "`nnuget is NOT installed. Please install this if you require Nuget dependency resolution"
}

if ($nuget_prev_v) {
    write-host $nuget_prev_v
}

##DotNET
if (Get-Command dotnet -errorAction SilentlyContinue) {
    write-host "`ndotnet is installed :"
    $dotnet_prev_v = (dotnet --version)
}
else
{
	write-host "`ndotnet is NOT installed. This may affect Nuget dependency resolution"
}

if ($dotnet_prev_v) {
    write-host $dotnet_prev_v
}

##Maven
if (Get-Command mvn -errorAction SilentlyContinue) {
    write-host "`nmvn is installed :"
    $mvn_prev_v = (mvn --version)
}
else
{
	write-host "`nMVN is NOT installed. Please install this if you require MVN dependency resolution"
}

if ($mvn_prev_v) {
    write-host $mvn_prev_v
}

#JDK
if (Get-Command java -errorAction SilentlyContinue) {
	write-host "`njava is installed :"
    $java_prev_v = (java -version)
}
else
{
	write-host "`nJava is NOT installed. This may affect MVN dependency resolution"
}
##Gradle
if (Get-Command gradle -errorAction SilentlyContinue) {
    write-host "`ngradle is installed :"
    $gradle_prev_v = (gradle --version)
}
else
{
	write-host "`nGradle is NOT installed. Please install this if you require Gradle dependency resolution"
}

if ($gradle_prev_v) {
    write-host $gradle_prev_v
}
##Python
if (Get-Command python -errorAction SilentlyContinue) {
    write-host "`npython is installed :"
    $python_prev_v = (python --version)
}
else
{
	write-host "`npython is NOT installed. Please install this if you require Python/PIP dependency resolution"
}

if ($python_prev_v) {
    write-host $python_prev_v
}
##PIP
if (Get-Command pip -errorAction SilentlyContinue) {
    write-host "`npip is installed :"
    $pip_prev_v = (pip --version)
}
else
{
	write-host "`npip is NOT installed. Please install this if you require Python/PIP dependency resolution"
}

if ($pip_prev_v) {
    write-host $pip_prev_v
}

write-host "`n`n"


