version 1.0

task Scala {
  input {
    String or
  }
  command <<<
    scala \
      ~{or}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    or: "scala -help"
  }
  output {
    File out_stdout = stdout()
  }
}