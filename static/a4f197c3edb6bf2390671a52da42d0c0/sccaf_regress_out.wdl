version 1.0

task Sccafregressout {
  input {
    File? input_file
    File? output_file
    String? keys_to_regress
  }
  command <<<
    sccaf_regress_out \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(keys_to_regress) then ("--keys-to-regress " +  '"' + keys_to_regress + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Path to input in AnnData or Loom"
    output_file: "Path for output file for annData with regression done."
    keys_to_regress: "Keys to regress out, comma separated. They should be\\nin the anndata object.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}