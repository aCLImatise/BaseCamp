version 1.0

task Qcatroc {
  input {
    String fast_q
  }
  command <<<
    qcat_roc \
      ~{fast_q}
  >>>
  parameter_meta {
    fast_q: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}