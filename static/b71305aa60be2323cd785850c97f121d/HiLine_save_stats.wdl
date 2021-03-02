version 1.0

task HiLineSavestats {
  input {
    String location_dot
  }
  command <<<
    HiLine save_stats \
      ~{location_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    location_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}