version 1.0

task DBGraphPep2Pro {
  input {
    File? input_edge_file
    File? input_edge_sequence
    File? input_sequence_identified
    File? base_name_name
    File? output_transcript_sequences
    Int? maximum_protein_sequence
    Int? k
    Int? c
    Int? d
    Int? m
    Boolean? soap_when_set
    Boolean? when_set_default
  }
  command <<<
    DBGraphPep2Pro \
      ~{if defined(input_edge_file) then ("-e " +  '"' + input_edge_file + '"') else ""} \
      ~{if defined(input_edge_sequence) then ("-s " +  '"' + input_edge_sequence + '"') else ""} \
      ~{if defined(input_sequence_identified) then ("-p " +  '"' + input_sequence_identified + '"') else ""} \
      ~{if defined(base_name_name) then ("-o " +  '"' + base_name_name + '"') else ""} \
      ~{if defined(output_transcript_sequences) then ("-n " +  '"' + output_transcript_sequences + '"') else ""} \
      ~{if defined(maximum_protein_sequence) then ("-L " +  '"' + maximum_protein_sequence + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if (soap_when_set) then "-u" else ""} \
      ~{if (when_set_default) then "-f" else ""}
  >>>
  parameter_meta {
    input_edge_file: ": The input edge file name"
    input_edge_sequence: ": The input edge sequence (contig) file name"
    input_sequence_identified: ": The input sequence (identified peptides) file name"
    base_name_name: "(base name only): The output protein Sequences file name"
    output_transcript_sequences: ": The output transcript sequences file name"
    maximum_protein_sequence: ": maximum protein sequence length (for memory allocation, default 3000)"
    k: ": default 31"
    c: ": default 0"
    d: ": default 10"
    m: ": default 100"
    soap_when_set: "(SOAP when set; default off for SOAP2)"
    when_set_default: "(FastG when set; default off for SOAP2)"
  }
  output {
    File out_stdout = stdout()
    File out_base_name_name = "${in_base_name_name}"
    File out_output_transcript_sequences = "${in_output_transcript_sequences}"
  }
}