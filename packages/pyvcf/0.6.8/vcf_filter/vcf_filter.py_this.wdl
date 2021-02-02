version 1.0

task VcfFilterpyThis {
  input {
    Boolean? no_filtered
    Boolean? no_short_circuit
    String vcf_filter_do_tpy
  }
  command <<<
    vcf_filter_py this \
      ~{vcf_filter_do_tpy} \
      ~{if (no_filtered) then "--no-filtered" else ""} \
      ~{if (no_short_circuit) then "--no-short-circuit" else ""}
  >>>
  parameter_meta {
    no_filtered: ""
    no_short_circuit: ""
    vcf_filter_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}