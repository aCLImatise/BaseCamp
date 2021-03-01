version 1.0

task FcDedupHTigspy {
  input {
    String ctg_id
  }
  command <<<
    fc_dedup_h_tigs_py \
      ~{ctg_id}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ctg_id: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}