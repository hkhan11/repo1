function find-recurringchar
{
	
	[CmdletBinding()]
	param (
		[char[]]$foo
		
	)
	
	$foo2 = [System.Collections.Generic.HashSet[char]]::new($foo);
	[array]$dupChar = foreach ($i in $foo2)
	{
		$global:cntFound = 1
		foreach ($f in $foo)
		{
            
			if ($i -eq $f)
			{
				$global:cntFound++;
			};
		};
		
		if ($global:cntFound -ge 3)
		{
			$i
            
		};
	};
	
	$outstring = "List first recurring character found: `n`r $($dupChar | Select-Object -first 1 $_) `n`r";
	
	
	Write-Host "$outstring" ;
	
};

