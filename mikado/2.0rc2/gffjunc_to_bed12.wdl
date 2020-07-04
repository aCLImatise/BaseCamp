version 1.0

task GffjuncToBed12.py {
  input {
    String gff
  }
  command <<<
    gffjunc_to_bed12.py \
      ~{gff}
  >>>
  parameter_meta {
    gff: ""
  }
}