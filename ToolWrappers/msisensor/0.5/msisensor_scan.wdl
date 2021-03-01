version 1.0

task MsisensorScan {
  input {
    Boolean? string_sequences_file
    File? string_output_homopolymer
    Boolean? int_minimal_homopolymer
    Boolean? int_context_length
    Boolean? int_maximal_homopolymer
    Boolean? int_maximal_length
    Boolean? int_minimal_repeat
    Boolean? int_output_homopolymer
  }
  command <<<
    msisensor scan \
      ~{if (string_sequences_file) then "-d" else ""} \
      ~{if (string_output_homopolymer) then "-o" else ""} \
      ~{if (int_minimal_homopolymer) then "-l" else ""} \
      ~{if (int_context_length) then "-c" else ""} \
      ~{if (int_maximal_homopolymer) then "-m" else ""} \
      ~{if (int_maximal_length) then "-s" else ""} \
      ~{if (int_minimal_repeat) then "-r" else ""} \
      ~{if (int_output_homopolymer) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_sequences_file: "<string>   reference genome sequences file, *.fasta format"
    string_output_homopolymer: "<string>   output homopolymer and microsatelittes file"
    int_minimal_homopolymer: "<int>      minimal homopolymer size, default=5"
    int_context_length: "<int>      context length, default=5"
    int_maximal_homopolymer: "<int>      maximal homopolymer size, default=50"
    int_maximal_length: "<int>      maximal length of microsate, default=5"
    int_minimal_repeat: "<int>      minimal repeat times of microsate, default=3"
    int_output_homopolymer: "<int>      output homopolymer only, 0: no; 1: yes, default=0"
  }
  output {
    File out_stdout = stdout()
    File out_string_output_homopolymer = "${in_string_output_homopolymer}"
  }
}