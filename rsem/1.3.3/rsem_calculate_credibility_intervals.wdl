version 1.0

task RsemCalculateCredibilityIntervals {
  input {
    String reference_name
    String imd_name
    String stat_name
    String confidence
    String ncv
    String ns_pc
    String nmb
  }
  command <<<
    rsem-calculate-credibility-intervals \
      ~{reference_name} \
      ~{imd_name} \
      ~{stat_name} \
      ~{confidence} \
      ~{ncv} \
      ~{ns_pc} \
      ~{nmb}
  >>>
  parameter_meta {
    reference_name: ""
    imd_name: ""
    stat_name: ""
    confidence: ""
    ncv: ""
    ns_pc: ""
    nmb: ""
  }
}