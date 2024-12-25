```vbscript
On Error Resume Next 'Handle potential errors
Dim objFSO As Object
Set objFSO = CreateObject("Scripting.FileSystemObject")
If Err.Number <> 0 Then
    MsgBox "Error creating FileSystemObject: " & Err.Description
    WScript.Quit
End If

If objFSO.FileExists("myFile.txt") Then
    ' ... handle the file ...
Else
    MsgBox "File not found."
End If

Set objFSO = Nothing

'Handling type mismatch
Dim myNumber As Integer
myNumber = CInt("10") + 5
MsgBox myNumber ' Output: 15
```