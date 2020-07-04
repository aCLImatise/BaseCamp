version 1.0

task Fq2fa.py {
  input {
    String convert
    String fast_q
    String to
    String fast_a
    String fast_q_filename
  }
  command <<<
    fq2fa.py \
      ~{convert} \
      ~{fast_q} \
      ~{to} \
      ~{fast_a} \
      ~{fast_q_filename}
  >>>
  parameter_meta {
    convert: ""
    fast_q: ""
    to: ""
    fast_a: ""
    fast_q_filename: ""
  }
}