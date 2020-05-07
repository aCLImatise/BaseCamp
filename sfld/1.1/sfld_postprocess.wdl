version 1.0

task SfldPostprocess {
  input {
    Boolean noNoSearch
    Boolean hmmerHmmerPath
    Boolean alignmentsAlignments
    Boolean domDom
    Boolean hmmerHmmerOut
    Boolean siteSiteInfo
    Boolean formatFormat
    Boolean outputOutput
  }
  command <<<
    sfld_postprocess \
      ~{true="--nosearch" false="" noNoSearch} \
      ~{true="--hmmerpath" false="" hmmerHmmerPath} \
      ~{true="--alignments" false="" alignmentsAlignments} \
      ~{true="--dom" false="" domDom} \
      ~{true="--hmmer-out" false="" hmmerHmmerOut} \
      ~{true="--site-info" false="" siteSiteInfo} \
      ~{true="--format" false="" formatFormat} \
      ~{true="--output" false="" outputOutput}
  >>>
}