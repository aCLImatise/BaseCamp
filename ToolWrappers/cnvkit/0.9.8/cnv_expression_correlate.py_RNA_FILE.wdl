version 1.0

task CnvExpressionCorrelatepyRNAFILE {
  input {
    File? o
    String cnv_expression_correlated_otp_y
    String cnv_file
    String rna_file
  }
  command <<<
    cnv_expression_correlate_py RNA_FILE \
      ~{cnv_expression_correlated_otp_y} \
      ~{cnv_file} \
      ~{rna_file} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cnvkit:0.9.8--py_0"
  }
  parameter_meta {
    o: ""
    cnv_expression_correlated_otp_y: ""
    cnv_file: ""
    rna_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}