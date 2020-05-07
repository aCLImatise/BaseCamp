class: CommandLineTool
id: phastCons.cwl
inputs:
- id: score
  doc: 0.4 mydata.ss noncons.mod > scores.wig
  type: boolean
  inputBinding:
    prefix: --score
- id: no_post_probs
  doc: noncons.mod
  type: string
  inputBinding:
    prefix: --no-post-probs
- id: estimate_trees
  doc: noncons.mod
  type: string
  inputBinding:
    prefix: --estimate-trees
- id: score
  doc: (Optionally use with --viterbi) Assign a log-odds score to each prediction.
  type: boolean
  inputBinding:
    prefix: --score
- id: lnl
  doc: Compute total log likelihood using the forward algorithm and write to specified
    file.
  type: string
  inputBinding:
    prefix: --lnl
- id: no_post_probs
  doc: Suppress output of posterior probabilities.  Useful if only discrete elements
    or likelihood is of interest.
  type: boolean
  inputBinding:
    prefix: --no-post-probs
- id: log
  doc: (Optionally use when estimating free parameters) Write log of optimization
    procedure to specified file.
  type: string
  inputBinding:
    prefix: --log
- id: ref_idx
  doc: Use coordinate frame of specified sequence in output.  Default value is 1,
    first sequence in alignment; 0 indicates coordinate frame of entire multiple alignment.
  type: string
  inputBinding:
    prefix: --refidx
- id: seqname
  doc: (Optionally use with --viterbi) Use specified string for 'seqname' (GFF) or
    'chrom' field in output file.  Default is obtained from input file name (double
    filename root, e.g., "chr22" if input file is "chr22.35.ss").
  type: string
  inputBinding:
    prefix: --seqname
- id: id_pref
  doc: (Optionally use with --viterbi) Use specified string as prefix of generated
    ids in output file.  Can be used to ensure ids are unique.  Default is obtained
    from input file name (single filename root, e.g., "chr22.35" if input file is
    "chr22.35.ss").
  type: string
  inputBinding:
    prefix: --idpref
- id: quiet
  doc: Proceed quietly (without updates to stderr).
  type: boolean
  inputBinding:
    prefix: --quiet
- id: indels_only
  doc: Like --indels but force the use of a single-state HMM.  This option allows
    the effect of the indel model in isolation to be observed.  Implies --no-post-probs.  Use
    with --lnl.
  type: boolean
  inputBinding:
    prefix: --indels-only
- id: alias
  doc: Alias names in input alignment according to given definition, e.g., "hg17=human;
    mm5=mouse; rn3=rat".  Useful with default *.mod files, e.g., with --coding-potential.  (Default
    models use generic common names such as "human", "mouse", and "rat".  This option
    allows a mapping to be established between the leaves of trees in these files
    and the sequences of an alignment that uses an alternative naming convention.)
  type: string
  inputBinding:
    prefix: --alias
- id: states
  doc: States of interest in the phylo-HMM, specified by number (indexing starts with
    0), or if --catmap, by category name. Default value is 1.  Choosing --states "0,1,2"
    will cause output of the sum of the posterior probabilities for states 0, 1, and
    2, and/or of regions in which the Viterbi path coincides with (any of) states
    0, 1, or 2 (see --viterbi).
  type: string
  inputBinding:
    prefix: --states
- id: reflect_strand
  doc: (Optionally use with --hmm) Given an HMM describing the forward strand, create
    a larger HMM that allows for features on both strands by "reflecting" the original
    HMM about the specified "pivot" states.  The new HMM will be used for prediction
    on both strands.  States can be specified by number (indexing starts with 0),
    or if --catmap, by category name.
  type: string
  inputBinding:
    prefix: --reflect-strand
- id: require_informative
  doc: 'Require "informative" columns (i.e., columns with more than two non-missing-data
    characters, excluding sequences specified by --not-informative) in specified HMM
    states, to help eliminate false positive predictions.  States can be specified
    by number (indexing starts with 0) or, if --catmap is used, by category name.  Non-informative
    columns will be given emission probabilities of zero.  By default, this option
    is active, with <states> equal to the set of states of interest for prediction
    (as specified by --states).  Use "none" to disable completely.  '
  type: string
  inputBinding:
    prefix: --require-informative
- id: not_informative
  doc: Do not consider the specified sequences (listed by name) when deciding whether
    a column is informative.  This option may be useful when sequences are present
    that are very close to the reference sequence and thus do not contribute much
    in the way of phylogenetic information.  E.g., one might use "--not-informative
    chimp" with a human-referenced multiple alignment including chimp sequence, to
    avoid false-positive predictions based only on human/chimp alignments (can be
    a problem, e.g., with --coding-potential).
  type: string
  inputBinding:
    prefix: --not-informative
- id: ignore_missing
  doc: '(For use when estimating transition probabilities) Ignore regions of missing
    data in all sequences but the reference sequence (excluding sequences specified
    by --not-informative) when estimating transition probabilities.  Can help avoid
    too-low estimates of <mu> and <nu> or too-high estimates of <lambda>.  Warning:
    this option should not be used with --viterbi because coordinates in output will
    be unrecognizable.'
  type: boolean
  inputBinding:
    prefix: --ignore-missing
outputs: []
cwlVersion: v1.1
baseCommand:
- phastCons
