version 1.0

task Bayescan2 {
  input {
    Boolean? out_pilot
    Boolean? out_freq
  }
  command <<<
    bayescan2 \
      ~{true="-out_pilot" false="" out_pilot} \
      ~{true="-out_freq" false="" out_freq}
  >>>
  parameter_meta {
    out_pilot: "Optional output file for pilot runs"
    out_freq: "Optional output file for allele frequencies"
  }
}