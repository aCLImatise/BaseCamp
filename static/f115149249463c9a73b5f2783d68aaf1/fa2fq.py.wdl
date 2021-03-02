version 1.0

task Fa2fqpy {
  input {
    String convert
    String fast_a
    String to
    String fast_q
    String fast_a_filename
  }
  command <<<
    fa2fq_py \
      ~{convert} \
      ~{fast_a} \
      ~{to} \
      ~{fast_q} \
      ~{fast_a_filename}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    convert: ""
    fast_a: ""
    to: ""
    fast_q: ""
    fast_a_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}