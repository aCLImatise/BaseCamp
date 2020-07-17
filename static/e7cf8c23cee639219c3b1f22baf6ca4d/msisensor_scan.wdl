version 1.0

task MsisensorScan {
  input {
    Boolean? string_file_format
    Boolean? string_output_homopolymer
    Boolean? int_minimal_homopolymer
    Boolean? int_context_length
    Boolean? int_maximal_default
    Boolean? int_maximal_length
    Boolean? int_minimal_repeat
    Boolean? int_output_homopolymer
  }
  command <<<
    msisensor scan \
      ~{true="-d" false="" string_file_format} \
      ~{true="-o" false="" string_output_homopolymer} \
      ~{true="-l" false="" int_minimal_homopolymer} \
      ~{true="-c" false="" int_context_length} \
      ~{true="-m" false="" int_maximal_default} \
      ~{true="-s" false="" int_maximal_length} \
      ~{true="-r" false="" int_minimal_repeat} \
      ~{true="-p" false="" int_output_homopolymer}
  >>>
  parameter_meta {
    string_file_format: "<string>   reference genome sequences file, *.fasta format"
    string_output_homopolymer: "<string>   output homopolymer and microsatelittes file"
    int_minimal_homopolymer: "<int>      minimal homopolymer size, default=5"
    int_context_length: "<int>      context length, default=5"
    int_maximal_default: "<int>      maximal homopolymer size, default=50"
    int_maximal_length: "<int>      maximal length of microsate, default=5"
    int_minimal_repeat: "<int>      minimal repeat times of microsate, default=3"
    int_output_homopolymer: "<int>      output homopolymer only, 0: no; 1: yes, default=0"
  }
}