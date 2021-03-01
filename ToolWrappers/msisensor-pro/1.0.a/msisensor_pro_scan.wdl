version 1.0

task MsisensorproScan {
  input {
    Boolean? string_sequences_file
    File? string_output_homopolymers
    Boolean? int_minimal_homopolymerrepeat
    Boolean? int_context_length
    Boolean? int_maximal_homopolymer
    Boolean? int_maximal_length
    Boolean? int_minimal_repeat
    Boolean? int_output_homopolymer
  }
  command <<<
    msisensor_pro scan \
      ~{if (string_sequences_file) then "-d" else ""} \
      ~{if (string_output_homopolymers) then "-o" else ""} \
      ~{if (int_minimal_homopolymerrepeat) then "-l" else ""} \
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
    string_sequences_file: "<string>   reference genome sequences file, *.fasta or *.fa format"
    string_output_homopolymers: "<string>   output homopolymers and microsatellites file"
    int_minimal_homopolymerrepeat: "<int>      minimal homopolymer(repeat unit length = 1) size, default=10"
    int_context_length: "<int>      context length, default=5"
    int_maximal_homopolymer: "<int>      maximal homopolymer size, default=50"
    int_maximal_length: "<int>      maximal length of microsatellite, default=5"
    int_minimal_repeat: "<int>      minimal repeat times of microsatellite(repeat unit length>=2), default=5"
    int_output_homopolymer: "<int>      output homopolymer only, 0: no; 1: yes, default=0"
  }
  output {
    File out_stdout = stdout()
    File out_string_output_homopolymers = "${in_string_output_homopolymers}"
  }
}