version 1.0

task TripailleJobGetLogs {
  input {
    String stdout
    String stderr
  }
  command <<<
    tripaille job get_logs \
      ~{stdout} \
      ~{stderr}
  >>>
  parameter_meta {
    stdout: ""
    stderr: ""
  }
  output {
    File out_stdout = stdout()
  }
}