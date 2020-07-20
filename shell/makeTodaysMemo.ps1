echo "make Today's memo"
$date_ = Get-Date -Format "yyyyMMdd"
$file_name_olg = "./memo" + $date_
$file_name = $file_name_olg + ".txt"
$num = 2
while ((Test-Path $file_name) -eq 1){
    $file_name=$file_name_olg+"-"+[string]$num+".txt"
    $num+=1
    echo $file_name
}
$file_path = "..\" + $file_name
New-Item $file_path
echo "made "+$file_path
Exit 0