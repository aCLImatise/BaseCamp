version 1.0

task FastqSample {
  input {
    String nN
    String pP
    String outputOutput
    Boolean withWithReplacement
    String seedSeed
  }
  command <<<
    fastq-sample \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--with-replacement" false="" withWithReplacement} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}