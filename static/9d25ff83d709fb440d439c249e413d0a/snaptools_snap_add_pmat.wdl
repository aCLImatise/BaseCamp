version 1.0

task SnaptoolsSnapAddPmat {
  input {
    String snapSnapFile
    String peakPeakFile
    String bufferBufferSize
    String tmpTmpFolder
    String verboseVerbose
  }
  command <<<
    snaptools snap-add-pmat \
      ~{if defined(snapSnapFile) then ("--snap-file " +  '"' + snapSnapFile + '"') else ""} \
      ~{if defined(peakPeakFile) then ("--peak-file " +  '"' + peakPeakFile + '"') else ""} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""} \
      ~{if defined(tmpTmpFolder) then ("--tmp-folder " +  '"' + tmpTmpFolder + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}