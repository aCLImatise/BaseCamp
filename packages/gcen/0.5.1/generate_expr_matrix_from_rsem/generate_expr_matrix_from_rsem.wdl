version 1.0

task GenerateExprMatrixFromRsem {
  input {
    File? text_file_sample
    File? tpm_value_instead
  }
  command <<<
    generate_expr_matrix_from_rsem \
      ~{if defined(text_file_sample) then ("--input " +  '"' + text_file_sample + '"') else ""} \
      ~{if defined(tpm_value_instead) then ("--output " +  '"' + tpm_value_instead + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gcen:0.5.1--hc9558a2_0"
  }
  parameter_meta {
    text_file_sample: "a text file with sample ID and path to its RSEM result file on each line"
    tpm_value_instead: "TPM value instead of FPKM vaule"
  }
  output {
    File out_stdout = stdout()
    File out_tpm_value_instead = "${in_tpm_value_instead}"
  }
}