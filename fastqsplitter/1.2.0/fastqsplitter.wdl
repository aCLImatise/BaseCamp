version 1.0

task Fastqsplitter {
  input {
    String inputInput
    String outputOutput
    String compressionCompressionLevel
    String threadsThreadsPerFile
    Boolean cytCytHon
    Boolean pythonPython
  }
  command <<<
    fastqsplitter \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(compressionCompressionLevel) then ("--compression-level " +  '"' + compressionCompressionLevel + '"') else ""} \
      ~{if defined(threadsThreadsPerFile) then ("--threads-per-file " +  '"' + threadsThreadsPerFile + '"') else ""} \
      ~{true="--cython" false="" cytCytHon} \
      ~{true="--python" false="" pythonPython}
  >>>
}