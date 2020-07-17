version 1.0

task GetOrthologList {
  input {
    String input_x_mfa
    String backbone_seq_file
    String reference_genome
    String cds_ortholog_filename
    String cds_alignment_base_name
  }
  command <<<
    getOrthologList \
      ~{input_x_mfa} \
      ~{backbone_seq_file} \
      ~{reference_genome} \
      ~{cds_ortholog_filename} \
      ~{cds_alignment_base_name}
  >>>
  parameter_meta {
    input_x_mfa: ""
    backbone_seq_file: ""
    reference_genome: ""
    cds_ortholog_filename: ""
    cds_alignment_base_name: ""
  }
}