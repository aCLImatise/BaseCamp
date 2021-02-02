version 1.0

task EagleFiles {
  input {
    String eagle
  }
  command <<<
    eagle files \
      ~{eagle}
  >>>
  parameter_meta {
    eagle: ""
  }
  output {
    File out_stdout = stdout()
  }
}