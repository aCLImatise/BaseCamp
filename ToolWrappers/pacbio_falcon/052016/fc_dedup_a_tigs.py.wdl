version 1.0

task FcDedupATigspy {
  command <<<
    fc_dedup_a_tigs_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}