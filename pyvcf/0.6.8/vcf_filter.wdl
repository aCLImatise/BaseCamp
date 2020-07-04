version 1.0

task VcfFilter.pyInput {
  input {
    Boolean? no_short_circuit
    Boolean? no_filtered
    String vcf_filter_do_tpy
  }
  command <<<
    vcf_filter.py input \
      ~{vcf_filter_do_tpy} \
      ~{true="--no-short-circuit" false="" no_short_circuit} \
      ~{true="--no-filtered" false="" no_filtered}
  >>>
  parameter_meta {
    no_short_circuit: ""
    no_filtered: ""
    vcf_filter_do_tpy: ""
  }
}