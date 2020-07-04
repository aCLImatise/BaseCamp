version 1.0

task Suppa.pyJoinFiles {
  input {
    Array[String] input_files
    String? file_extension
    String? name_output_file
  }
  command <<<
    suppa.py joinFiles \
      ~{if defined(input_files) then ("--input-files " +  '"' + input_files + '"') else ""} \
      ~{if defined(file_extension) then ("--file-extension " +  '"' + file_extension + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""}
  >>>
  parameter_meta {
    input_files: "Space separated list of the files to be joined. If the absolute path is not indicate the program use the current working directory instead."
    file_extension: "Extension of the output file. Required."
    name_output_file: "Name of the output file."
  }
}