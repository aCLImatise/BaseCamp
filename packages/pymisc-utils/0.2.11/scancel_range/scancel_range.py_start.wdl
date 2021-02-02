version 1.0

task ScancelRangepyStart {
  input {
    String end
  }
  command <<<
    scancel_range_py start \
      ~{end}
  >>>
  parameter_meta {
    end: ""
  }
  output {
    File out_stdout = stdout()
  }
}