version 1.0

task ChicQualityControl {
  input {
    Array[String]+ matricesMatrices
    String referenceReferencePoints
    String sparsitySparsity
    String outOutFilename
    String outOutFilenameHistogram
    String outOutFilenameSparsity
    String threadsThreads
    String fixateFixateRange
    String dpiDpi
  }
  command <<<
    chicQualityControl \
      ~{if defined(matricesMatrices) then ("--matrices " +  '"' + matricesMatrices + '"') else ""} \
      ~{if defined(referenceReferencePoints) then ("--referencePoints " +  '"' + referenceReferencePoints + '"') else ""} \
      ~{if defined(sparsitySparsity) then ("--sparsity " +  '"' + sparsitySparsity + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(outOutFilenameHistogram) then ("--outFileNameHistogram " +  '"' + outOutFilenameHistogram + '"') else ""} \
      ~{if defined(outOutFilenameSparsity) then ("--outFileNameSparsity " +  '"' + outOutFilenameSparsity + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(fixateFixateRange) then ("--fixateRange " +  '"' + fixateFixateRange + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""}
  >>>
}