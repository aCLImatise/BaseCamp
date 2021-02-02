version 1.0

task Rsemcalculatecredibilityintervals {
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
    rsem_calculate_credibility_intervals \
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
  output {
    File out_stdout = stdout()
  }
}