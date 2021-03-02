version 1.0

task CnvExpressionCorrelatepy {
  input {
    File? output_file_name
  }
  command <<<
    cnv_expression_correlate_py \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    output_file_name: "Output file name (summary table).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}