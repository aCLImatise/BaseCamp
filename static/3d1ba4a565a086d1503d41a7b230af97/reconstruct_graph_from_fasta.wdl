version 1.0

task ReconstructGraphFromFasta.py {
  input {
    String? input_fasta_file
    String? output_graph_file
    String? kmer_reconstructing_default
    String? circular
    Boolean? single_chain
    String? out_kg
  }
  command <<<
    reconstruct_graph_from_fasta.py \
      ~{if defined(input_fasta_file) then ("-i " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(output_graph_file) then ("-o " +  '"' + output_graph_file + '"') else ""} \
      ~{if defined(kmer_reconstructing_default) then ("-k " +  '"' + kmer_reconstructing_default + '"') else ""} \
      ~{if defined(circular) then ("--circular " +  '"' + circular + '"') else ""} \
      ~{true="--single-chain" false="" single_chain} \
      ~{if defined(out_kg) then ("--out-kg " +  '"' + out_kg + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "Input fasta file."
    output_graph_file: "Output graph file. The output format is GFA by default, but FASTG only when indicated with postfix '.fastg'."
    kmer_reconstructing_default: "kmer for reconstructing De Bruijn graph. Default:55"
    circular: "Sequences in input fasta file are all circular (yes/no/auto). The auto mode enables detection by checking the existence of '(circular)' in the end of the header of each sequence. Default:auto"
    single_chain: "The input sequence(s) was by default treated as DNA double-chain with its complementary sequence. Choose this flag to turn off."
    out_kg: "Output kmer node graph."
  }
}