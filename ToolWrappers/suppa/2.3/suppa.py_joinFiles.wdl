version 1.0

task SuppapyJoinFiles {
  input {
    Array[String] input_files
    File? file_extension
    File? name_output_file
  }
  command <<<
    suppa_py joinFiles \
      ~{if defined(input_files) then ("--input-files " +  '"' + input_files + '"') else ""} \
      ~{if defined(file_extension) then ("--file-extension " +  '"' + file_extension + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_files: "Space separated list of the files to be joined. If the\\nabsolute path is not indicate the program use the\\ncurrent working directory instead."
    file_extension: "Extension of the output file. Required."
    name_output_file: "Name of the output file.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_file_extension = "${in_file_extension}"
    File out_name_output_file = "${in_name_output_file}"
  }
}