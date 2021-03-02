version 1.0

task Fastahammingenrich {
  input {
    String? word_required
    File? positive_sequences_fasta
    File? negative_sequences_fasta
    File? alphabet_definition_file
    Boolean? refine_consensus_branching
  }
  command <<<
    fasta_hamming_enrich \
      ~{if defined(word_required) then ("-w " +  '"' + word_required + '"') else ""} \
      ~{if defined(positive_sequences_fasta) then ("-p " +  '"' + positive_sequences_fasta + '"') else ""} \
      ~{if defined(negative_sequences_fasta) then ("-n " +  '"' + negative_sequences_fasta + '"') else ""} \
      ~{if defined(alphabet_definition_file) then ("-a " +  '"' + alphabet_definition_file + '"') else ""} \
      ~{if (refine_consensus_branching) then "-r" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    word_required: "word (required)"
    positive_sequences_fasta: "positive sequences FASTA file name (required)"
    negative_sequences_fasta: "negative sequences FASTA file name (required)"
    alphabet_definition_file: "alphabet definition file"
    refine_consensus_branching: "refine consensus by branching search\\n(distance 1 steps; beam size = 1)."
  }
  output {
    File out_stdout = stdout()
  }
}