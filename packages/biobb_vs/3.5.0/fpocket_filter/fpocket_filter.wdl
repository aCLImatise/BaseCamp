version 1.0

task FpocketFilter {
  input {
    File? config
    File? input_pockets_zip
    File? input_summary
    File? output_filter_pockets_zip
  }
  command <<<
    fpocket_filter \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_pockets_zip) then ("--input_pockets_zip " +  '"' + input_pockets_zip + '"') else ""} \
      ~{if defined(input_summary) then ("--input_summary " +  '"' + input_summary + '"') else ""} \
      ~{if defined(output_filter_pockets_zip) then ("--output_filter_pockets_zip " +  '"' + output_filter_pockets_zip + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_vs:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    input_pockets_zip: "Path to all the pockets found by fpocket. Accepted formats: zip."
    input_summary: "Path to the JSON summary file returned by fpocket. Accepted formats: json."
    output_filter_pockets_zip: "Path to the selected pockets after filtering. Accepted formats: zip.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}