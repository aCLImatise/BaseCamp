version 1.0

task DBGraph2Pro {
  input {
    File? input_edge_file
    File? input_edge_sequence
    String? base_name_sequences
    Int? minimum_peptide_length
    Int? maximum_peptide_length
    Int? minimum_contig_length
    Int? maximum_sequence_length
    Int? k
    Int? c
    Int? d
    Boolean? soap_when_set
    Boolean? fastg_when_set
    Boolean? fastg_output_set
  }
  command <<<
    DBGraph2Pro \
      ~{if defined(input_edge_file) then ("-e " +  '"' + input_edge_file + '"') else ""} \
      ~{if defined(input_edge_sequence) then ("-s " +  '"' + input_edge_sequence + '"') else ""} \
      ~{if defined(base_name_sequences) then ("-o " +  '"' + base_name_sequences + '"') else ""} \
      ~{if defined(minimum_peptide_length) then ("-p " +  '"' + minimum_peptide_length + '"') else ""} \
      ~{if defined(maximum_peptide_length) then ("-m " +  '"' + maximum_peptide_length + '"') else ""} \
      ~{if defined(minimum_contig_length) then ("-l " +  '"' + minimum_contig_length + '"') else ""} \
      ~{if defined(maximum_sequence_length) then ("-L " +  '"' + maximum_sequence_length + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if (soap_when_set) then "-u" else ""} \
      ~{if (fastg_when_set) then "-f" else ""} \
      ~{if (fastg_output_set) then "-S" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_edge_file: ": The input edge file name"
    input_edge_sequence: ": The input edge sequence (contig) file name"
    base_name_sequences: "(base name only): Protein Sequences files"
    minimum_peptide_length: ": minimum peptide length to be output (default 6)"
    maximum_peptide_length: ": maximum peptide length to be output (default 50)"
    minimum_contig_length: ": minimum contig length to be explored (longer contigs will be executed by FGS)"
    maximum_sequence_length: ": maximum sequence length (for memory allocation, default 3000)"
    k: ": default 31"
    c: ": default 0"
    d: ": default 10"
    soap_when_set: "(SOAP when set; default off for SOAP2)"
    fastg_when_set: "(FastG when set; default off for SOAP2)"
    fastg_output_set: "(FastG output by MetaSPaDes when set; default off for SOAP2)"
  }
  output {
    File out_stdout = stdout()
  }
}