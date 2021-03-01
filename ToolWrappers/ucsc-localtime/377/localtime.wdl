version 1.0

task Localtime {
  input {
    String time_stamp
  }
  command <<<
    localtime \
      ~{time_stamp}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    time_stamp: ""
  }
  output {
    File out_stdout = stdout()
  }
}