version 1.0

task Genrestr {
  input {
    File? config
    File? input_structure_path
    File? output_itp_path
    String? input_ndx_path
  }
  command <<<
    genrestr \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_structure_path) then ("--input_structure_path " +  '"' + input_structure_path + '"') else ""} \
      ~{if defined(output_itp_path) then ("--output_itp_path " +  '"' + output_itp_path + '"') else ""} \
      ~{if defined(input_ndx_path) then ("--input_ndx_path " +  '"' + input_ndx_path + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_structure_path: "--input_ndx_path INPUT_NDX_PATH\\n--output_itp_path OUTPUT_ITP_PATH\\n"
    output_itp_path: ""
    input_ndx_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_itp_path = "${in_output_itp_path}"
  }
}