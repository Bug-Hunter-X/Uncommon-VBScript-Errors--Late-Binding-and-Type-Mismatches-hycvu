Late Binding: In VBScript, if you don't explicitly declare object variables, they are implicitly declared as variants. This can lead to runtime errors if the object isn't properly initialized or if the object's methods or properties don't exist.  Example:

```vbscript
Dim objFSO
Set objFSO = CreateObject("Scripting.FileSystemObject")
' ... later in the code ...
If objFSO.FileExists("nonexistent.txt") Then  'Error if objFSO is not properly Set
    ' ... handle the file ...
end If
```

Solution:  Explicitly declare object variables and handle potential errors with On Error Resume Next and error checking.

Type mismatch:  occurs when you're trying to perform an operation on variables of incompatible data types.  Consider this:

```vbscript
Dim myNumber
myNumber = "10" + 5 ' Type mismatch; string + number
```

Solution: Ensure your data types are consistent.  Convert strings to numbers using CInt, CLng, etc., as needed. Avoid implicit type conversions.   