version 1.0

task SnpSiftVcf2tped {
  input {
    Boolean fF
    Boolean numNum
    Boolean onlyOnlySnp
    Boolean onlyOnlyBiAllelic
    Boolean useUseMissing
    Boolean useUseMissingRef
    String? outputOutputName
  }
  command <<<
    SnpSift vcf2tped \
      ~{outputOutputName} \
      ~{true="-f" false="" fF} \
      ~{true="-num" false="" numNum} \
      ~{true="-onlySnp" false="" onlyOnlySnp} \
      ~{true="-onlyBiAllelic" false="" onlyOnlyBiAllelic} \
      ~{true="-useMissing" false="" useUseMissing} \
      ~{true="-useMissingRef" false="" useUseMissingRef}
  >>>
}