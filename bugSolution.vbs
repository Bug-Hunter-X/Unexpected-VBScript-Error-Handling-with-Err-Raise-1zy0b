Function MyFunction(param1, param2)
  On Error Resume Next
  If IsEmpty(param1) Or IsEmpty(param2) Then
    Err.Raise vbError, , "Parameters cannot be empty"
    If Err.Number <> 0 Then
      ' Handle the error appropriately (log, display message, etc.)
      MsgBox Err.Description
      Err.Clear
      Exit Function ' Exit to prevent further processing if error occured
    End If
  End If
  On Error GoTo 0
  ' ... rest of the function ...
End Function