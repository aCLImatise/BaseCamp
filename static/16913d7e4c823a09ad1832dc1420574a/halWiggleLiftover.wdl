version 1.0

task HalWiggleLiftover {
  input {
    String hal_file
    String src_genome
    String src_wig
    String tgt_genome
    String tg_twig
  }
  command <<<
    halWiggleLiftover \
      ~{hal_file} \
      ~{src_genome} \
      ~{src_wig} \
      ~{tgt_genome} \
      ~{tg_twig}
  >>>
  parameter_meta {
    hal_file: ""
    src_genome: ""
    src_wig: ""
    tgt_genome: ""
    tg_twig: ""
  }
}