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
    docker: "quay.io/biocontainers/mikado:2.1.1--py36hf0b53f7_0"
  }
  parameter_meta {
    gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}