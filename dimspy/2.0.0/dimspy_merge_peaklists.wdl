version 1.0

task DimspyMergePeaklists {
  input {
    String inputInput
    String outputOutput
    File fileFileList
  }
  command <<<
    dimspy merge-peaklists \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(fileFileList) then ("--filelist " +  '"' + fileFileList + '"') else ""}
  >>>
}