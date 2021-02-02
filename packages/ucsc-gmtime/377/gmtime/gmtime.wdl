version 1.0

task Gmtime {
  input {
    String time_stamp
  }
  command <<<
    gmtime \
      ~{time_stamp}
  >>>
  parameter_meta {
    time_stamp: ""
  }
  output {
    File out_stdout = stdout()
  }
}