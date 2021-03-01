version 1.0

task GffjuncToBed12pyGff {
  input {
    String gff
  }
  command <<<
    gffjunc_to_bed12_py gff \
      ~{gff}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0"
  }
  parameter_meta {
    gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}