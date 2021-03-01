version 1.0

task RsatPositionscan {
  input {
    String position_scan
    String j_dotado_tc_dot_mondragon_atncmmdotuiodotno
    String util
    String specified_dot
    String done_dot
  }
  command <<<
    rsat position_scan \
      ~{position_scan} \
      ~{j_dotado_tc_dot_mondragon_atncmmdotuiodotno} \
      ~{util} \
      ~{specified_dot} \
      ~{done_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    position_scan: "[1mVERSION[0m"
    j_dotado_tc_dot_mondragon_atncmmdotuiodotno: "[1mCATEGORY[0m"
    util: "[1mUSAGE[0m"
    specified_dot: "Default: 1e-3"
    done_dot: "[1m-diff[0m"
  }
  output {
    File out_stdout = stdout()
  }
}