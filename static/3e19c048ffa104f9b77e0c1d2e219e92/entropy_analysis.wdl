version 1.0

task EntropyAnalysis {
  input {
    Boolean? unique_d
    Boolean? weighted
    Boolean? amino_acid_sequences
    Boolean? quick
    Boolean? no_display
    String? qual_scores_file
    String alignment
  }
  command <<<
    entropy-analysis \
      ~{alignment} \
      ~{true="--uniqued" false="" unique_d} \
      ~{true="--weighted" false="" weighted} \
      ~{true="--amino-acid-sequences" false="" amino_acid_sequences} \
      ~{true="--quick" false="" quick} \
      ~{true="--no-display" false="" no_display} \
      ~{if defined(qual_scores_file) then ("--qual-scores-file " +  '"' + qual_scores_file + '"') else ""}
  >>>
  parameter_meta {
    unique_d: "When set, entropy computation will assume that the reads in FASTA file are unique. Frequency information of unique reads must be stored in the deflines. Every defline in the FASTA file must present the frequency information in this format: \"freq:NUMBER\", e.g. \">Read_ID|X|Y|freq:42\", or \">Read_ID|freq:42|X|Y\""
    weighted: "When set, entropy computation per column will use mean quality score for each column."
    amino_acid_sequences: "If sequences are composed of amino acids, instead of nucleotides."
    quick: "When set, entropy values will be shown as fast as possible (some visualization steps will be skipped)."
    no_display: "When set, no figures will be shown."
    qual_scores_file: ""
    alignment: "Alignment file that contains all samples and sequences in FASTA format"
  }
}