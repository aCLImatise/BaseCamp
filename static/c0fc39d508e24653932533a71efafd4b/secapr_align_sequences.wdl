version 1.0

task SecaprAlignSequences {
  input {
    File? sequences
    Directory? outdir
    Boolean? exclude_ambiguous
    String? gap_opening_penalty
    String? gap_extension_penalty
    Int? min_seqs_per_locus
    Boolean? no_trim
    String? trim_al_setting
    Int? window_size
    Int? seq_proportion
    Int? conserve_alignment_percentage
    Int? min_length
    Int? cores
    String alignments_dot
  }
  command <<<
    secapr align_sequences \
      ~{alignments_dot} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (exclude_ambiguous) then "--exclude_ambiguous" else ""} \
      ~{if defined(gap_opening_penalty) then ("--gap_opening_penalty " +  '"' + gap_opening_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("--gap_extension_penalty " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(min_seqs_per_locus) then ("--min_seqs_per_locus " +  '"' + min_seqs_per_locus + '"') else ""} \
      ~{if (no_trim) then "--no_trim" else ""} \
      ~{if defined(trim_al_setting) then ("--trimal_setting " +  '"' + trim_al_setting + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if defined(seq_proportion) then ("--seq_proportion " +  '"' + seq_proportion + '"') else ""} \
      ~{if defined(conserve_alignment_percentage) then ("--conserve_alignment_percentage " +  '"' + conserve_alignment_percentage + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0"
  }
  parameter_meta {
    sequences: "The fasta file containing individual sequences for\\nseveral samples and loci"
    outdir: "The directory in which to store the resulting"
    exclude_ambiguous: "Don't allow reads in alignments containing N-bases."
    gap_opening_penalty: "Set gap opening penalty for aligner."
    gap_extension_penalty: "Set gap extension penalty for aligner."
    min_seqs_per_locus: "Minimum number of sequences required for building\\nalignment."
    no_trim: "Suppress trimming of alignments. By default secapr\\nuses trimal to trim gappy positions from alignments."
    trim_al_setting: "Use one of trimal automated scenarios. These will\\noverwrite all other trimming flags (see below). See\\ntrimal tutorial for more info about settings."
    window_size: "Sliding window size for trimming."
    seq_proportion: "The proportion of sequences required. All alignment\\ncolumns with fewer sequences will be deleted (0-1)."
    conserve_alignment_percentage: "This setting will ensure to conserve the specified\\npercentage of the alignment when trimming (0-100)."
    min_length: "The minimum length of alignments to keep."
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs.\\n"
    alignments_dot: "--aligner {muscle,mafft}"
  }
  output {
    File out_stdout = stdout()
  }
}