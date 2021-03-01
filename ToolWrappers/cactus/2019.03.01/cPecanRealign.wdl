version 1.0

task CPecanRealign {
  input {
    Boolean? loglevel
    Boolean? gap_gamma
    Boolean? match_gamma
    Boolean? split_matrix_bigger_than_this
    Boolean? diagonal_expansion
    Boolean? constraint_diagonal_trim
    Boolean? align_ambiguity_characters
    Boolean? re_score_original_alignment
    Boolean? re_score_by_identity
    Boolean? re_score_by_posterior_prob
    Boolean? re_score_by_identity_ignoring_gaps
    Boolean? re_score_by_posterior_prob_ignoring_gaps
    Boolean? split_indels_longer_than_this
    Boolean? output_posterior_probs
    Boolean? output_all_posterior_probs
    File? output_expectations
    Boolean? load_hmm
  }
  command <<<
    cPecanRealign \
      ~{if (loglevel) then "--logLevel" else ""} \
      ~{if (gap_gamma) then "--gapGamma" else ""} \
      ~{if (match_gamma) then "--matchGamma" else ""} \
      ~{if (split_matrix_bigger_than_this) then "--splitMatrixBiggerThanThis" else ""} \
      ~{if (diagonal_expansion) then "--diagonalExpansion" else ""} \
      ~{if (constraint_diagonal_trim) then "--constraintDiagonalTrim" else ""} \
      ~{if (align_ambiguity_characters) then "--alignAmbiguityCharacters" else ""} \
      ~{if (re_score_original_alignment) then "--rescoreOriginalAlignment" else ""} \
      ~{if (re_score_by_identity) then "--rescoreByIdentity" else ""} \
      ~{if (re_score_by_posterior_prob) then "--rescoreByPosteriorProb" else ""} \
      ~{if (re_score_by_identity_ignoring_gaps) then "--rescoreByIdentityIgnoringGaps" else ""} \
      ~{if (re_score_by_posterior_prob_ignoring_gaps) then "--rescoreByPosteriorProbIgnoringGaps" else ""} \
      ~{if (split_indels_longer_than_this) then "--splitIndelsLongerThanThis" else ""} \
      ~{if (output_posterior_probs) then "--outputPosteriorProbs" else ""} \
      ~{if (output_all_posterior_probs) then "--outputAllPosteriorProbs" else ""} \
      ~{if (output_expectations) then "--outputExpectations" else ""} \
      ~{if (load_hmm) then "--loadHmm" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    loglevel: ": Set the log level"
    gap_gamma: ": (float >= 0) The gap gamma (as in the AMAP function)"
    match_gamma: ": (float [0, 1]) The match gamma (the avg. weight or greater to be allowed in the alignment)"
    split_matrix_bigger_than_this: ": (int >= 0)  No dp matrix bigger than this number squared will be computed."
    diagonal_expansion: ": (int >= 0 and even) Number of x-y diagonals to expand around anchors"
    constraint_diagonal_trim: ": (int >= 0) Amount to trim from ends of each anchor"
    align_ambiguity_characters: ": Align ambiguity characters (anything not ACTGactg) as a wildcard"
    re_score_original_alignment: ": Rescore the original alignment. The output cigar is the same alignment."
    re_score_by_identity: ": Set score equal to alignment identity, treating indels as mismatches."
    re_score_by_posterior_prob: ": Set score equal to avg. posterior match probability, treating indels as residues with 0 match probability."
    re_score_by_identity_ignoring_gaps: ": Set score equal to alignment identity, ignoring indels."
    re_score_by_posterior_prob_ignoring_gaps: ": Set score equal to avg. posterior match probability, ignoring gaps."
    split_indels_longer_than_this: ": Split alignments with consecutive runs of indels that are longer than this."
    output_posterior_probs: "[FILE] : Outputs the posterior match probs of positions in the alignment to the given tab separated file, each line being X-coordinate, Y-coordinate, posterior-match prob."
    output_all_posterior_probs: "[FILE] : As --outputPosteriorProbs, but for all pairs in the banded alignment"
    output_expectations: "[FILE] : Instead of realigning, switches to calculating expectations, dumping out expectations as matrix in the given file."
    load_hmm: "[FILE] : Loads HMM from given file."
  }
  output {
    File out_stdout = stdout()
    File out_output_expectations = "${in_output_expectations}"
  }
}