version 1.0

task Bealign {
  input {
    String? reference
    String? expected_identity
    String? alphabet
    String? score_matrix
    String? discard
    Boolean? reverse_complement
    Boolean? no_sort
    Boolean? quiet
    Boolean? keep_reference
  }
  command <<<
    bealign \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(expected_identity) then ("--expected-identity " +  '"' + expected_identity + '"') else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if defined(score_matrix) then ("--score-matrix " +  '"' + score_matrix + '"') else ""} \
      ~{if defined(discard) then ("--discard " +  '"' + discard + '"') else ""} \
      ~{true="--reverse-complement" false="" reverse_complement} \
      ~{true="--no-sort" false="" no_sort} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--keep-reference" false="" keep_reference}
  >>>
  parameter_meta {
    reference: "REFERENCE FASTA file or {HXB2_env, HXB2_gag, HXB2_int, HXB2_nef, HXB2_pol, HXB2_pr, HXB2_prrt, HXB2_rev, HXB2_rt, HXB2_tat, HXB2_vif, HXB2_vpr, HXB2_vpu, NL4-3_prrt}"
    expected_identity: "discard sequences that are insufficiently identical to the reference"
    alphabet: "perform an alignment using one of {amino, dna, codon} [default=codon]"
    score_matrix: "parameterize using one of {BLOSUM62, DNA65, DNA70, DNA80, DNA88, DNA95, HIV_BETWEEN_F, PAM200, PAM250} [default=BLOSUM62]"
    discard: "discarded sequences are sent to DISCARD"
    reverse_complement: "also align the reverse complement of each query sequence, returning it if the alignment is superior"
    no_sort: "do NOT sort the resulting BAM file [the default is to sort]"
    quiet: "do not print status update messages"
    keep_reference: "include the reference sequence as the first one in the resulting BAM file [the default is to strip it]"
  }
}