version 1.0

task MsisensorProScan {
  input {
    Boolean? string_reference_genome
    Boolean? string_output_homopolymers
    Boolean? int_minimal_homopolymerrepeat
    Boolean? int_context_length
    Boolean? int_maximal_default
    Boolean? int_maximal_length
    Boolean? int_minimal_repeat
    Boolean? int_output_homopolymer
  }
  command <<<
    msisensor-pro scan \
      ~{true="-d" false="" string_reference_genome} \
      ~{true="-o" false="" string_output_homopolymers} \
      ~{true="-l" false="" int_minimal_homopolymerrepeat} \
      ~{true="-c" false="" int_context_length} \
      ~{true="-m" false="" int_maximal_default} \
      ~{true="-s" false="" int_maximal_length} \
      ~{true="-r" false="" int_minimal_repeat} \
      ~{true="-p" false="" int_output_homopolymer}
  >>>
  parameter_meta {
    string_reference_genome: "<string>   reference genome sequences file, *.fasta or *.fa format"
    string_output_homopolymers: "<string>   output homopolymers and microsatellites file"
    int_minimal_homopolymerrepeat: "<int>      minimal homopolymer(repeat unit length = 1) size, default=10"
    int_context_length: "<int>      context length, default=5"
    int_maximal_default: "<int>      maximal homopolymer size, default=50"
    int_maximal_length: "<int>      maximal length of microsatellite, default=5"
    int_minimal_repeat: "<int>      minimal repeat times of microsatellite(repeat unit length>=2), default=5"
    int_output_homopolymer: "<int>      output homopolymer only, 0: no; 1: yes, default=0"
  }
}