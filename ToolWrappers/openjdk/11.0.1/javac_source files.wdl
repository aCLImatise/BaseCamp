version 1.0

task JavacSourcefiles {
  input {
    String javac
    String options
    String source_files
  }
  command <<<
    javac source_files \
      ~{javac} \
      ~{options} \
      ~{source_files}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    javac: ""
    options: ""
    source_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}