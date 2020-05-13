version 1.0

task SnaptoolsSnapAddBmat {
  input {
    String snapSnapFile
    Array[String]+ binBinSizeList
    String tmpTmpFolder
    String verboseVerbose
  }
  command <<<
    snaptools snap-add-bmat \
      ~{if defined(snapSnapFile) then ("--snap-file " +  '"' + snapSnapFile + '"') else ""} \
      ~{if defined(binBinSizeList) then ("--bin-size-list " +  '"' + binBinSizeList + '"') else ""} \
      ~{if defined(tmpTmpFolder) then ("--tmp-folder " +  '"' + tmpTmpFolder + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}