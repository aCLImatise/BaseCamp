version 1.0

task LdhelmetConvertTable {
  input {
    Boolean? _display_version
    String? input_table
    File? output_table
    File? config_file
  }
  command <<<
    ldhelmet convert_table \
      ~{if (_display_version) then "-v" else ""} \
      ~{if defined(input_table) then ("--input_table " +  '"' + input_table + '"') else ""} \
      ~{if defined(output_table) then ("--output_table " +  '"' + output_table + '"') else ""} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _display_version: "[ --version ]       Display version."
    input_table: "LDhat style table to be converted."
    output_table: "Name for output file."
    config_file: "(Optional) File with configs.  This is only necessary\\nif you have missing data.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_table = "${in_output_table}"
  }
}