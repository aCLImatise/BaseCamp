version 1.0

task EagleFiles {
  input {
    String eagle
  }
  command <<<
    eagle files \
      ~{eagle}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    eagle: ""
  }
  output {
    File out_stdout = stdout()
  }
}