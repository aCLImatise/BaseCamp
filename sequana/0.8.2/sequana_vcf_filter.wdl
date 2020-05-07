version 1.0

task SequanaVcfFilter {
  input {
    Boolean filterFilter
    Boolean filterFilter
    Boolean filterFilter
    String? onlyOnly
    String? forFor
    String? vcfVcf
    String? usingUsing
    String? mMPileUp
    String? versionVersion
    String? 4141
    String? forFor
    String? nowNow
  }
  command <<<
    sequana_vcf_filter \
      ~{onlyOnly} \
      ~{true="--filter" false="" filterFilter} \
      ~{true="--filter" false="" filterFilter} \
      ~{true="--filter" false="" filterFilter} \
      ~{forFor} \
      ~{vcfVcf} \
      ~{usingUsing} \
      ~{mMPileUp} \
      ~{versionVersion} \
      ~{4141} \
      ~{forFor} \
      ~{nowNow}
  >>>
}