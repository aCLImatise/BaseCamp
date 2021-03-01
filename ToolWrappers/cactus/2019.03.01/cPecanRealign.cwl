class: CommandLineTool
id: cPecanRealign.cwl
inputs:
- id: in_loglevel
  doc: ': Set the log level'
  type: boolean?
  inputBinding:
    prefix: --logLevel
- id: in_gap_gamma
  doc: ': (float >= 0) The gap gamma (as in the AMAP function)'
  type: boolean?
  inputBinding:
    prefix: --gapGamma
- id: in_match_gamma
  doc: ': (float [0, 1]) The match gamma (the avg. weight or greater to be allowed
    in the alignment)'
  type: boolean?
  inputBinding:
    prefix: --matchGamma
- id: in_split_matrix_bigger_than_this
  doc: ': (int >= 0)  No dp matrix bigger than this number squared will be computed.'
  type: boolean?
  inputBinding:
    prefix: --splitMatrixBiggerThanThis
- id: in_diagonal_expansion
  doc: ': (int >= 0 and even) Number of x-y diagonals to expand around anchors'
  type: boolean?
  inputBinding:
    prefix: --diagonalExpansion
- id: in_constraint_diagonal_trim
  doc: ': (int >= 0) Amount to trim from ends of each anchor'
  type: boolean?
  inputBinding:
    prefix: --constraintDiagonalTrim
- id: in_align_ambiguity_characters
  doc: ': Align ambiguity characters (anything not ACTGactg) as a wildcard'
  type: boolean?
  inputBinding:
    prefix: --alignAmbiguityCharacters
- id: in_re_score_original_alignment
  doc: ': Rescore the original alignment. The output cigar is the same alignment.'
  type: boolean?
  inputBinding:
    prefix: --rescoreOriginalAlignment
- id: in_re_score_by_identity
  doc: ': Set score equal to alignment identity, treating indels as mismatches.'
  type: boolean?
  inputBinding:
    prefix: --rescoreByIdentity
- id: in_re_score_by_posterior_prob
  doc: ': Set score equal to avg. posterior match probability, treating indels as
    residues with 0 match probability.'
  type: boolean?
  inputBinding:
    prefix: --rescoreByPosteriorProb
- id: in_re_score_by_identity_ignoring_gaps
  doc: ': Set score equal to alignment identity, ignoring indels.'
  type: boolean?
  inputBinding:
    prefix: --rescoreByIdentityIgnoringGaps
- id: in_re_score_by_posterior_prob_ignoring_gaps
  doc: ': Set score equal to avg. posterior match probability, ignoring gaps.'
  type: boolean?
  inputBinding:
    prefix: --rescoreByPosteriorProbIgnoringGaps
- id: in_split_indels_longer_than_this
  doc: ': Split alignments with consecutive runs of indels that are longer than this.'
  type: boolean?
  inputBinding:
    prefix: --splitIndelsLongerThanThis
- id: in_output_posterior_probs
  doc: '[FILE] : Outputs the posterior match probs of positions in the alignment to
    the given tab separated file, each line being X-coordinate, Y-coordinate, posterior-match
    prob.'
  type: boolean?
  inputBinding:
    prefix: --outputPosteriorProbs
- id: in_output_all_posterior_probs
  doc: '[FILE] : As --outputPosteriorProbs, but for all pairs in the banded alignment'
  type: boolean?
  inputBinding:
    prefix: --outputAllPosteriorProbs
- id: in_output_expectations
  doc: '[FILE] : Instead of realigning, switches to calculating expectations, dumping
    out expectations as matrix in the given file.'
  type: File?
  inputBinding:
    prefix: --outputExpectations
- id: in_load_hmm
  doc: '[FILE] : Loads HMM from given file.'
  type: boolean?
  inputBinding:
    prefix: --loadHmm
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_expectations
  doc: '[FILE] : Instead of realigning, switches to calculating expectations, dumping
    out expectations as matrix in the given file.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_expectations)
hints: []
cwlVersion: v1.1
baseCommand:
- cPecanRealign
