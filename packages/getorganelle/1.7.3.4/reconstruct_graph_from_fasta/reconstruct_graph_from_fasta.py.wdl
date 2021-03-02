version 1.0

task ReconstructGraphFromFastapy {
  input {
    File? input_fasta_file
    File? output_graph_file
    Int? overlap
    File? circular
    Boolean? single_chain
    String? out_kg
  }
  command <<<
    reconstruct_graph_from_fasta_py \
      ~{if defined(input_fasta_file) then ("-i " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(output_graph_file) then ("-o " +  '"' + output_graph_file + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(circular) then ("--circular " +  '"' + circular + '"') else ""} \
      ~{if (single_chain) then "--single-chain" else ""} \
      ~{if defined(out_kg) then ("--out-kg " +  '"' + out_kg + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    input_fasta_file: "Input fasta file."
    output_graph_file: "Output graph file. The output format is GFA by\\ndefault, but FASTG only when indicated with postfix\\n'.fastg'."
    overlap: "overlap for reconstructing De Bruijn graph. Default:55"
    circular: "Sequences in input fasta file are all circular\\n(yes/no/auto). The auto mode enables detection by\\nchecking the existence of '(circular)' in the end of\\nthe header of each sequence. Default:auto"
    single_chain: "The input sequence(s) was by default treated as DNA\\ndouble-chain with its complementary sequence. Choose\\nthis flag to turn off."
    out_kg: "Output kmer node graph."
  }
  output {
    File out_stdout = stdout()
    File out_output_graph_file = "${in_output_graph_file}"
  }
}