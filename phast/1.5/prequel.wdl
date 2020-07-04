version 1.0

task Prequel {
  input {
    String? refseq
    String? gibbs
    String alignment_dot_fa
    String tree_dot_mod
    String out_root
  }
  command <<<
    prequel \
      ~{alignment_dot_fa} \
      ~{tree_dot_mod} \
      ~{out_root} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{if defined(gibbs) then ("--gibbs " +  '"' + gibbs + '"') else ""}
  >>>
  parameter_meta {
    refseq: "(for use with --msa-format MAF) Read the complete text of the reference sequence from <fname> (FASTA format) and combine it with the contents of the MAF file to produce a complete, ordered representation of the alignment.  The reference sequence of the MAF file is assumed to be the one that appears first in each block."
    gibbs: "(experimental) Estimate posterior probabilities by Gibbs sampling rather than by the sum-product algorithm.  Sample each sequence <nsamples> times and estimate posterior probabilities as fraction of times each base appeared at each position.  This option is used by default if a dinucleotide or trinucleotide model is given (exact inference not possible).   NOT YET IMPLEMENTED"
    alignment_dot_fa: ""
    tree_dot_mod: ""
    out_root: ""
  }
}