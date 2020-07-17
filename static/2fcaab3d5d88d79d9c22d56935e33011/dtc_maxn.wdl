version 1.0

task DtcMaxn {
  input {
    String dtc
    Int min_w
    Int max_w
    String slen
    Int minn
    Int max_n
  }
  command <<<
    dtc maxn \
      ~{dtc} \
      ~{min_w} \
      ~{max_w} \
      ~{slen} \
      ~{minn} \
      ~{max_n}
  >>>
  parameter_meta {
    dtc: ""
    min_w: ""
    max_w: ""
    slen: ""
    minn: ""
    max_n: ""
  }
}