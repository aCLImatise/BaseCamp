version 1.0

task Espgenpy {
  input {
    File? input_file_name
    File? output_file_name
    String? software_version_default
  }
  command <<<
    espgen_py \
      ~{if defined(input_file_name) then ("-i " +  '"' + input_file_name + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(software_version_default) then ("-v " +  '"' + software_version_default + '"') else ""}
  >>>
  parameter_meta {
    input_file_name: "Input file name"
    output_file_name: "Output file name"
    software_version_default: "Software version [Default is gau (means Gaussian),\\nother option is gms (means GAMESS-US)]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}