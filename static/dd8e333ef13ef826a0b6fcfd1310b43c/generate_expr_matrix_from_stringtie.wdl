version 1.0

task GenerateExprMatrixFromStringtie {
  input {
    File? text_file_sample
    File? tmp_value_instead
  }
  command <<<
    generate_expr_matrix_from_stringtie \
      ~{if defined(text_file_sample) then ("--input " +  '"' + text_file_sample + '"') else ""} \
      ~{if defined(tmp_value_instead) then ("--output " +  '"' + tmp_value_instead + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gcen:0.5.1--hc9558a2_0"
  }
  parameter_meta {
    text_file_sample: "a text file with sample ID and path to its GTF file on each line"
    tmp_value_instead: "TMP value instead of FPKM vaule"
  }
  output {
    File out_stdout = stdout()
    File out_tmp_value_instead = "${in_tmp_value_instead}"
  }
}