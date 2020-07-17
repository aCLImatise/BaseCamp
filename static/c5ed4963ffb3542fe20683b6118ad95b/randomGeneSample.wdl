version 1.0

task RandomGeneSample {
  input {
    String input_x_mfa
    String backbone_seq_file
    String sample_genome
    String number_of_genes
    String output_base_name
    String? random
    String? seed
  }
  command <<<
    randomGeneSample \
      ~{input_x_mfa} \
      ~{backbone_seq_file} \
      ~{sample_genome} \
      ~{number_of_genes} \
      ~{output_base_name} \
      ~{random} \
      ~{seed}
  >>>
  parameter_meta {
    input_x_mfa: ""
    backbone_seq_file: ""
    sample_genome: ""
    number_of_genes: ""
    output_base_name: ""
    random: ""
    seed: ""
  }
}