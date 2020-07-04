version 1.0

task Fa2fq.py {
  input {
    String convert
    String fast_a
    String to
    String fast_q
    String fast_a_filename
  }
  command <<<
    fa2fq.py \
      ~{convert} \
      ~{fast_a} \
      ~{to} \
      ~{fast_q} \
      ~{fast_a_filename}
  >>>
  parameter_meta {
    convert: ""
    fast_a: ""
    to: ""
    fast_q: ""
    fast_a_filename: ""
  }
}