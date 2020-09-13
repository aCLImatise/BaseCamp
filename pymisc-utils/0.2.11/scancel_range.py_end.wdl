version 1.0

task ScancelRangepyEnd {
  input {
    String s_cancel_range_do_tpy
    String start
    String end
  }
  command <<<
    scancel_range_py end \
      ~{s_cancel_range_do_tpy} \
      ~{start} \
      ~{end}
  >>>
  parameter_meta {
    s_cancel_range_do_tpy: ""
    start: ""
    end: ""
  }
  output {
    File out_stdout = stdout()
  }
}