version 1.0

task GffjuncToBed12pyGff {
  input {
    String gff
  }
  command <<<
    gffjunc_to_bed12_py gff \
      ~{gff}
  >>>
  parameter_meta {
    gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}