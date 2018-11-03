get-help about_For -ShowWindow
$b = @(1,2,3,4,5)
for($c=0; $C -le 4 ; $C ++)
{ $b[$c]
}


$b = @("*","*","*","*","*")
for($c=0; $C -le 10 ; $C ++)
{ $b[$c]
}


for($e=4; $e -ge 1 ; $e --)
{  
    
    for ($f=0;$f -lt $e ; $f ++)
    {
    Write-Host "*" -NoNewline
    }
    
    Write-Host "`n"
        
}


for($e=0; $e -eq 4 ; $e ++)
{  
    
    for ($f=4;$f -gt $e ; $f --)
    {
    Write-Host "*" -NoNewline
    }
    
    Write-Host "`n"
        
}




for($e=0; $e -le 3 ; $e ++)
{  
    
    for ($f=0;$f -lt $e ; $f ++)
    {
    Write-Host "*" -NoNewline
    }
    
    Write-Host ""
        
}

for($e=4; $e -ge 1 ; $e --)
{  
    
    for ($f=0;$f -lt $e ; $f ++)
    {
    Write-Host "*" -NoNewline
    }
    
    Write-Host ""
        
}





#<To create text files>

for($e=1; $e -le 10 ; $e ++)
{  
    
    New-Item -Path C:\SUMIT1\$e.txt   
        
}


#<To remove files>


$file = Get-ChildItem C:\sumit1\
foreach($fl in $file)
{
 $fl.Delete()

  }

 
  while(Get-Process)

  {Stop-Process -Name Notepad

    }


#<To get files older than 2015>

$file1 = Get-ChildItem C:\Windows\System32 *.dll

$Comparedate = (Get-Date).AddYears(-3)

foreach($File in $file1)

{  

if($file.CreationTime -lt $comparedate)
    { write-host $File.Name "File is OLD" -ForegroundColor Red
    }

else
    {Write-Host $File.Name "File is not old" -ForegroundColor DarkYellow
    }
}


#<Export>

Get-Process | Export-Csv -Path C:\SUMIT\Proces.csv
$olderstate = Import-Csv -Path C:\SUMIT\Proces.csv
$newstate = Get-Process
foreach($new in $newstate)
{

if($olderstate | ? {$_.name -eq $new.name})
    {Write-Host "No Worry"
    }

    else
        {$new.name | Out-File -FilePath C:\SUMIT\NewProcess.csv -Append
    }

 }










        



