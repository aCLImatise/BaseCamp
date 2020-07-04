version 1.0

task FcDedupHTigs.py {
  input {
    String ctg_id
  }
  command <<<
    fc_dedup_h_tigs.py \
      ~{ctg_id}
  >>>
  parameter_meta {
    ctg_id: ""
  }
}