version 1.0

task Locus2bed {
  input {
    File? path_input_file
    Directory? input_directory
    String? prefix
  }
  command <<<
    locus2bed \
      ~{if defined(path_input_file) then ("--input " +  '"' + path_input_file + '"') else ""} \
      ~{if defined(input_directory) then ("--input-directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_input_file: "Path to input locus file"
    input_directory: "Path to directory containing locus files"
    prefix: "Prefix to region names"
  }
  output {
    File out_stdout = stdout()
  }
}