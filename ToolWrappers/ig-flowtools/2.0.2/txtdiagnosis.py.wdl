version 1.0

task Txtdiagnosispy {
  input {
    File? file_location_text
    File? filename_location_text
    File? name_output_file
  }
  command <<<
    txtdiagnosis_py \
      ~{if defined(file_location_text) then ("-i " +  '"' + file_location_text + '"') else ""} \
      ~{if defined(filename_location_text) then ("-n " +  '"' + filename_location_text + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""}
  >>>
  parameter_meta {
    file_location_text: "File location for the text file."
    filename_location_text: "Filename location for the text file."
    name_output_file: "Name of the output file."
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}