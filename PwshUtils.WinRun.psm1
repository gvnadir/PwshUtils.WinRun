Function Get-GistFile {
	param (
		[string]$Url
	)

	$fileName = $Url.Split("/")[-1]
	$cache = "$env:LOCALAPPDATA\PwshUtils\$fileName"

	try {
		if (-not (Test-Path (Split-Path $cache))) {
			New-Item -ItemType Directory -Path (Split-Path $cache) -Force | Out-Null
		}

		Invoke-WebRequest -Uri $url -OutFile $cache -ErrorAction Stop
	}
 catch {
		Write-Warning "Download failed. Using local copy if available."
	}

	if (Test-Path $cache) {
		Import-Csv $cache
	}
 else {
		throw "No CSV file available."
	}

}

Function Get-UtilWinRunCommands {
	Get-GistFile -Url 'https://gist.githubusercontent.com/gvnadir/46f0ccd9b7d58d17d51e73e972e75caa/raw/cf935e76551c2cbbe13cb24671b9e48cb136dca1/WindowsRun.csv'
}
