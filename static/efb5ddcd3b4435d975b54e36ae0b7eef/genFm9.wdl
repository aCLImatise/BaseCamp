version 1.0

task GenFm9 {
  input {
    String fastFastQ
    Boolean multiMultiFastA
    String outputOutput
    String sizeSize
  }
  command <<<
    genFm9 \
      ~{if defined(fastFastQ) then ("-fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{true="-multiFasta" false="" multiMultiFastA} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(sizeSize) then ("-size " +  '"' + sizeSize + '"') else ""}
  >>>
}