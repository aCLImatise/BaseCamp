version 1.0

task Varcall {
  input {
    String prefix_dot_var
    String prefix_do_tea_v
    String prefix_dot_cse
    String prefix_dot_vcf
    String prefix_dot_var_sum
    String prefix_dot_tgt_dot_var
    String prefix_dot_tgt_dot_cse
    String prefix_dot_tgt_dot_var_sum
    String prefix_dot_stats
    String prefix_dot_noise
    String prefix_do_tx_noise
  }
  command <<<
    varcall \
      ~{prefix_dot_var} \
      ~{prefix_do_tea_v} \
      ~{prefix_dot_cse} \
      ~{prefix_dot_vcf} \
      ~{prefix_dot_var_sum} \
      ~{prefix_dot_tgt_dot_var} \
      ~{prefix_dot_tgt_dot_cse} \
      ~{prefix_dot_tgt_dot_var_sum} \
      ~{prefix_dot_stats} \
      ~{prefix_dot_noise} \
      ~{prefix_do_tx_noise}
  >>>
  parameter_meta {
    prefix_dot_var: "Variant calls in tab delimited 'varcall' format"
    prefix_do_tea_v: "Variant calls in tab delimited 'ea-var' format"
    prefix_dot_cse: "Variant calls in tab delimited 'varprowl' format"
    prefix_dot_vcf: "Variant calls, in vcf format"
    prefix_dot_var_sum: "Summary of variant calls"
    prefix_dot_tgt_dot_var: "On-target version of .var"
    prefix_dot_tgt_dot_cse: "On-target version of .cse"
    prefix_dot_tgt_dot_var_sum: "On-target version of .varsum"
    prefix_dot_stats: "Stats output"
    prefix_dot_noise: "Non-reference, non-homozygous allele summary"
    prefix_do_tx_noise: "Like noise, but with context-specific rates"
  }
}