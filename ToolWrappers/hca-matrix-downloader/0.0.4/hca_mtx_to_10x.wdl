version 1.0

task Hcamtxto10x {
  input {
    String in
    String? out
  }
  command <<<
    hca_mtx_to_10x \
      ~{in} \
      ~{out}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hca-matrix-downloader:0.0.4--py_0"
  }
  parameter_meta {
    in: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}