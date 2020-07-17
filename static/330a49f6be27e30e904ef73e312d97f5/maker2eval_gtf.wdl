version 1.0

task Maker2evalGtf {
  input {
    String maker_two_eval
    String maker_gff_three_file
  }
  command <<<
    maker2eval_gtf \
      ~{maker_two_eval} \
      ~{maker_gff_three_file}
  >>>
  parameter_meta {
    maker_two_eval: ""
    maker_gff_three_file: ""
  }
}