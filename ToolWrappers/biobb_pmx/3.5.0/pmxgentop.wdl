version 1.0

task Pmxgentop {
  input {
    File? config
    File? input_top_zip_path
    File? output_top_zip_path
  }
  command <<<
    pmxgentop \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_top_zip_path) then ("--input_top_zip_path " +  '"' + input_top_zip_path + '"') else ""} \
      ~{if defined(output_top_zip_path) then ("--output_top_zip_path " +  '"' + output_top_zip_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_pmx:3.5.0--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_top_zip_path: "Path to the input topology zip file"
    output_top_zip_path: "Path to the output topology zip file\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_top_zip_path = "${in_output_top_zip_path}"
  }
}