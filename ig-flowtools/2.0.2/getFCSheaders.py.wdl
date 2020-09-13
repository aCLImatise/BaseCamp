version 1.0

task GetFCSheaderspy {
  input {
    File? file_location_text
    File? file_names
    File? name_output_file
  }
  command <<<
    getFCSheaders_py \
      ~{if defined(file_location_text) then ("-i " +  '"' + file_location_text + '"') else ""} \
      ~{if defined(file_names) then ("-n " +  '"' + file_names + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""}
  >>>
  parameter_meta {
    file_location_text: "File location for the text files."
    file_names: "File names."
    name_output_file: "Name of the output file."
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}