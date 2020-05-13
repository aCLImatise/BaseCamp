version 1.0

task SnaptoolsSnapAddGmat {
  input {
    String snapSnapFile
    String geneGeneFile
    String bufferBufferSize
    String tmpTmpFolder
    String verboseVerbose
  }
  command <<<
    snaptools snap-add-gmat \
      ~{if defined(snapSnapFile) then ("--snap-file " +  '"' + snapSnapFile + '"') else ""} \
      ~{if defined(geneGeneFile) then ("--gene-file " +  '"' + geneGeneFile + '"') else ""} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""} \
      ~{if defined(tmpTmpFolder) then ("--tmp-folder " +  '"' + tmpTmpFolder + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}