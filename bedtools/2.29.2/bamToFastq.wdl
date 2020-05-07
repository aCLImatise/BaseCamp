version 1.0

task BamToFastq {
  input {
    Boolean fq2Fq2
    Boolean tagsTags
    String? optionsOptions
  }
  command <<<
    bamToFastq \
      ~{optionsOptions} \
      ~{true="-fq2" false="" fq2Fq2} \
      ~{true="-tags" false="" tagsTags}
  >>>
}