version 1.0

task Bamleftalign {
  input {
    File fastFastAReference
    Boolean debugDebug
    Boolean suppressSuppressOutput
    String maxMaxIterations
    Boolean compressedCompressed
  }
  command <<<
    bamleftalign \
      ~{if defined(fastFastAReference) then ("--fasta-reference " +  '"' + fastFastAReference + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--suppress-output" false="" suppressSuppressOutput} \
      ~{if defined(maxMaxIterations) then ("--max-iterations " +  '"' + maxMaxIterations + '"') else ""} \
      ~{true="--compressed" false="" compressedCompressed}
  >>>
}