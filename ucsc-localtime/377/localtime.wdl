version 1.0

task Localtime {
  input {
    String time_stamp
  }
  command <<<
    localtime \
      ~{time_stamp}
  >>>
  parameter_meta {
    time_stamp: ""
  }
}