version 1.0

task AppendLigand {
  input {
    File? config
    File? input_top_zip_path
    File? output_top_zip_path
    File? input_itp_path
  }
  command <<<
    append_ligand \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_top_zip_path) then ("--input_top_zip_path " +  '"' + input_top_zip_path + '"') else ""} \
      ~{if defined(output_top_zip_path) then ("--output_top_zip_path " +  '"' + output_top_zip_path + '"') else ""} \
      ~{if defined(input_itp_path) then ("--input_itp_path " +  '"' + input_itp_path + '"') else ""}
  >>>
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_top_zip_path: "--input_itp_path INPUT_ITP_PATH\\n--output_top_zip_path OUTPUT_TOP_ZIP_PATH\\n"
    output_top_zip_path: ""
    input_itp_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_top_zip_path = "${in_output_top_zip_path}"
  }
}