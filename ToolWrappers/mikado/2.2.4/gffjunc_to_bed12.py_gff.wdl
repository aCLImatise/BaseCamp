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
    docker: "quay.io/biocontainers/mikado:2.2.4--py38h803c66d_0"
  }
  parameter_meta {
    gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}