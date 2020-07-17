version 1.0

task DtcMinw {
  input {
    Int max_w
    String slen
    Int minn
    Int max_n
  }
  command <<<
    dtc minw \
      ~{max_w} \
      ~{slen} \
      ~{minn} \
      ~{max_n}
  >>>
  parameter_meta {
    max_w: ""
    slen: ""
    minn: ""
    max_n: ""
  }
}