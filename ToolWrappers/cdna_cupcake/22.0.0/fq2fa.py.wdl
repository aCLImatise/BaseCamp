version 1.0

task Fq2fapy {
  input {
    String convert
    String fast_q
    String to
    String fast_a
    String fast_q_filename
  }
  command <<<
    fq2fa_py \
      ~{convert} \
      ~{fast_q} \
      ~{to} \
      ~{fast_a} \
      ~{fast_q_filename}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  parameter_meta {
    convert: ""
    fast_q: ""
    to: ""
    fast_a: ""
    fast_q_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}