version 1.0

task AppendLigand {
  input {
    File? config
    File? output_top_zip_path
    File? input_itp_path
    File? input_top_zip_path
  }
  command <<<
    append_ligand \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_top_zip_path) then ("--output_top_zip_path " +  '"' + output_top_zip_path + '"') else ""} \
      ~{if defined(input_itp_path) then ("--input_itp_path " +  '"' + input_itp_path + '"') else ""} \
      ~{if defined(input_top_zip_path) then ("--input_top_zip_path " +  '"' + input_top_zip_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_top_zip_path: ""
    input_itp_path: ""
    input_top_zip_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_top_zip_path = "${in_output_top_zip_path}"
  }
}