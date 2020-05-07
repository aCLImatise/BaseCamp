version 1.0

task ChainMergeSort {
  input {
    String saveSaveId
    String inputInputList
    String tempdirTempdir
  }
  command <<<
    chainMergeSort \
      ~{if defined(saveSaveId) then ("-saveId " +  '"' + saveSaveId + '"') else ""} \
      ~{if defined(inputInputList) then ("-inputList " +  '"' + inputInputList + '"') else ""} \
      ~{if defined(tempdirTempdir) then ("-tempDir " +  '"' + tempdirTempdir + '"') else ""}
  >>>
}