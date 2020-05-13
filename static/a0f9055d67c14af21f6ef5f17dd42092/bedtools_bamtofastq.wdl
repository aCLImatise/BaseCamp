version 1.0

task BedtoolsBamtofastq {
  input {
    Boolean fq2Fq2
    Boolean tagsTags
    String? bamBamToFastQ
    String? optionsOptions
  }
  command <<<
    bedtools bamtofastq \
      ~{bamBamToFastQ} \
      ~{true="-fq2" false="" fq2Fq2} \
      ~{true="-tags" false="" tagsTags} \
      ~{optionsOptions}
  >>>
}