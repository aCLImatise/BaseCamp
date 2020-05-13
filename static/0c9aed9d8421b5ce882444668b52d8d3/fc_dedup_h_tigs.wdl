version 1.0

task FcDedupHTigs.py {
  input {
    String? ctgCtgId
  }
  command <<<
    fc_dedup_h_tigs.py \
      ~{ctgCtgId}
  >>>
}