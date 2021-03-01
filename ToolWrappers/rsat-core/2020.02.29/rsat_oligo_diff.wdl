version 1.0

task RsatOligodiff {
  input {
    String oligo_diff
    String jacques_do_tv_and_otheldenatulbdotacdotbe
    String util
    String format_dot
    String occurrences_dot
    String respectively_dot
  }
  command <<<
    rsat oligo_diff \
      ~{oligo_diff} \
      ~{jacques_do_tv_and_otheldenatulbdotacdotbe} \
      ~{util} \
      ~{format_dot} \
      ~{occurrences_dot} \
      ~{respectively_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    oligo_diff: "[1mVERSION[0m"
    jacques_do_tv_and_otheldenatulbdotacdotbe: "[1mCATEGORY[0m"
    util: "[1mUSAGE[0m"
    format_dot: "[1m-ctrl control_seq_file[0m"
    occurrences_dot: "[1m-l oligo_length[0m"
    respectively_dot: "[1m-return maps[0m"
  }
  output {
    File out_stdout = stdout()
  }
}