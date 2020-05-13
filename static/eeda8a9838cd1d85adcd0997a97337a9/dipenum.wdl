version 1.0

task Dipenum {
  input {
    String inputInputFile
    String outputOutput
    Boolean lL
    Boolean rR
    String maxMaxNHaplotypes
    Boolean fF
    Boolean pP
  }
  command <<<
    dipenum \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{if defined(maxMaxNHaplotypes) then ("--max-n-haplotypes " +  '"' + maxMaxNHaplotypes + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-P" false="" pP}
  >>>
}