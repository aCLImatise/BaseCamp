version 1.0

task HTseq2DIEGOpl {
  input {
    File? file_containing_files
    File? output_file_name
    File? usefull_help_message
  }
  command <<<
    HTseq2DIEGO_pl \
      ~{if defined(file_containing_files) then ("-i " +  '"' + file_containing_files + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(usefull_help_message) then ("-h " +  '"' + usefull_help_message + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_containing_files: "file containing input files and ids\\nid [tab] path.to/file"
    output_file_name: "output file name (default:junction_table_dexdas )"
    usefull_help_message: "this (usefull) help message"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}