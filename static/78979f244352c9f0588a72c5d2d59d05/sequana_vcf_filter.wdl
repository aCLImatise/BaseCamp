version 1.0

task SequanaVcfFilter {
  input {
    String only
    String var_1
    String vcf
    String using
    String m_pile_up
    String version
    String four_dot_one
    String var_7
    String now
  }
  command <<<
    sequana_vcf_filter \
      ~{only} \
      ~{var_1} \
      ~{vcf} \
      ~{using} \
      ~{m_pile_up} \
      ~{version} \
      ~{four_dot_one} \
      ~{var_7} \
      ~{now}
  >>>
  parameter_meta {
    only: ""
    var_1: ""
    vcf: ""
    using: ""
    m_pile_up: ""
    version: ""
    four_dot_one: ""
    var_7: ""
    now: ""
  }
}