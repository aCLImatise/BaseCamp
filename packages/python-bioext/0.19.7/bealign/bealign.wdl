version 1.0

task Bealign {
  input {
    File? reference
    String? expected_identity
    String? alphabet
    Int? score_matrix
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
      ~{if (reverse_complement) then "--reverse-complement" else ""} \
      ~{if (no_sort) then "--no-sort" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (keep_reference) then "--keep-reference" else ""}
  >>>
  parameter_meta {
    reference: "REFERENCE FASTA file or {HXB2_env, HXB2_gag, HXB2_int,\\nHXB2_nef, HXB2_pol, HXB2_pr, HXB2_prrt, HXB2_rev,\\nHXB2_rt, HXB2_tat, HXB2_vif, HXB2_vpr, HXB2_vpu,\\nNL4-3_prrt}"
    expected_identity: "discard sequences that are insufficiently identical to\\nthe reference"
    alphabet: "perform an alignment using one of {amino, dna, codon}\\n[default=codon]"
    score_matrix: "parameterize using one of {BLOSUM62, DNA65, DNA70,\\nDNA80, DNA88, DNA95, HIV_BETWEEN_F, PAM200, PAM250}\\n[default=BLOSUM62]"
    discard: "discarded sequences are sent to DISCARD"
    reverse_complement: "also align the reverse complement of each query\\nsequence, returning it if the alignment is superior"
    no_sort: "do NOT sort the resulting BAM file [the default is to\\nsort]"
    quiet: "do not print status update messages"
    keep_reference: "include the reference sequence as the first one in the\\nresulting BAM file [the default is to strip it]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}