version 1.0

task MStabletosingle {
  input {
    String? species_table
    String? input_table_reversed
    File? file_directory_default
    String? name_of_output
  }
  command <<<
    MS_table_to_single \
      ~{if defined(species_table) then ("-i " +  '"' + species_table + '"') else ""} \
      ~{if defined(input_table_reversed) then ("-R " +  '"' + input_table_reversed + '"') else ""} \
      ~{if defined(file_directory_default) then ("-o " +  '"' + file_directory_default + '"') else ""} \
      ~{if defined(name_of_output) then ("-p " +  '"' + name_of_output + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dms:1.1--hc9558a2_0"
  }
  parameter_meta {
    species_table: "species table [Required]"
    input_table_reversed: "the input table is reversed, T(rue) or F(alse), default is false [Optional]"
    file_directory_default: "file directory, default is \\\"result\\\""
    name_of_output: "name of output"
  }
  output {
    File out_stdout = stdout()
  }
}