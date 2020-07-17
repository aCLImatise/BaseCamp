version 1.0

task InterProphetParser {
  input {
    Int length
    String no_fp_km
    String non_ss
    String non_se
    String non_rs
    String non_sm
    String non_sp
    String sharp_nse
    String non_si
  }
  command <<<
    InterProphetParser \
      ~{length} \
      ~{no_fp_km} \
      ~{non_ss} \
      ~{non_se} \
      ~{non_rs} \
      ~{non_sm} \
      ~{non_sp} \
      ~{sharp_nse} \
      ~{non_si}
  >>>
  parameter_meta {
    length: "- Use Peptide Length model"
    no_fp_km: "- Do not use FPKM model"
    non_ss: "- Do not use NSS model"
    non_se: "- Do not use NSE model"
    non_rs: "- Do not use NRS model"
    non_sm: "- Do not use NSM model"
    non_sp: "- Do not use NSP model"
    sharp_nse: "- Use more discriminating model for NSE in SWATH mode "
    non_si: "- Do not use NSI model"
  }
}