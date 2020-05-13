version 1.0

task OSubsampleMatrixFile {
  input {
    File colsColsToRemove
    File rowsRowsToRemove
    File colsColsToKeep
    File rowsRowsToKeep
    String outputOutputFile
    File? fileFile
  }
  command <<<
    o-subsample-matrix-file \
      ~{fileFile} \
      ~{if defined(colsColsToRemove) then ("--cols-to-remove " +  '"' + colsColsToRemove + '"') else ""} \
      ~{if defined(rowsRowsToRemove) then ("--rows-to-remove " +  '"' + rowsRowsToRemove + '"') else ""} \
      ~{if defined(colsColsToKeep) then ("--cols-to-keep " +  '"' + colsColsToKeep + '"') else ""} \
      ~{if defined(rowsRowsToKeep) then ("--rows-to-keep " +  '"' + rowsRowsToKeep + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}