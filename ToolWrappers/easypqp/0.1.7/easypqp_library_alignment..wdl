version 1.0

task EasypqpLibraryAlignment {
  input {
    String easy_pqp
    String library
    String? in_files
  }
  command <<<
    easypqp library alignment_ \
      ~{easy_pqp} \
      ~{library} \
      ~{in_files}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    easy_pqp: ""
    library: ""
    in_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}