version 1.0

task PilfilepyFiles {
  input {
    File? such_file_directory
  }
  command <<<
    pilfile_py files___ \
      ~{if defined(such_file_directory) then ("-h " +  '"' + such_file_directory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    such_file_directory: ": [Errno 2] No such file or directory: '-h'"
  }
  output {
    File out_stdout = stdout()
  }
}