version 1.0

task Polymutt {
  input {
    Boolean? rate_de_novo
    Boolean? ts_tv_de_novo
    Boolean? min_perc_sample_with_data
    Boolean? out_vcf
    Boolean? quick_call
  }
  command <<<
    polymutt \
      ~{if (rate_de_novo) then "--rate_denovo" else ""} \
      ~{if (ts_tv_de_novo) then "--tstv_denovo" else ""} \
      ~{if (min_perc_sample_with_data) then "--minPercSampleWithData" else ""} \
      ~{if (out_vcf) then "--out_vcf" else ""} \
      ~{if (quick_call) then "--quick_call" else ""}
  >>>
  parameter_meta {
    rate_de_novo: "[1.5e-08],"
    ts_tv_de_novo: "[2.00], --minLLR_denovo [-3.0e+00]"
    min_perc_sample_with_data: "[0.00]"
    out_vcf: "[], --pos [], --all_sites, --gl_off,"
    quick_call: ""
  }
  output {
    File out_stdout = stdout()
  }
}