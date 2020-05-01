version 1.0

task Hapenum {
  input {
    String inputInputFile
    String outputOutputDot
    String outputOutputFastA
    Boolean lL
    Boolean rR
    Boolean fF
    Boolean pP
    String maxMaxNHaplotypes
  }
  command <<<
    hapenum \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(outputOutputDot) then ("--output-dot " +  '"' + outputOutputDot + '"') else ""} \
      ~{if defined(outputOutputFastA) then ("--output-fasta " +  '"' + outputOutputFastA + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{true="-f" false="" fF} \
      ~{true="-P" false="" pP} \
      ~{if defined(maxMaxNHaplotypes) then ("--max-n-haplotypes " +  '"' + maxMaxNHaplotypes + '"') else ""}
  >>>
}