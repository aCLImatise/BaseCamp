class: CommandLineTool
id: phyloFit.cwl
inputs:
- id: out_root
  doc: ).
  type: boolean
  inputBinding:
    prefix: --out-root
- id: out_root
  doc: primate-rodent.fa
  type: string
  inputBinding:
    prefix: --out-root
- id: out_root
  doc: 4 primate-rodent.fa
  type: string
  inputBinding:
    prefix: --out-root
- id: cat_map
  doc: '"NCATS = 3; CDS 1-3" --do-cats 1,2,3 mammals.fa'
  type: boolean
  inputBinding:
    prefix: --catmap
- id: out_root
  doc: (default "phyloFit").  Use specified string as root filename for all files
    created.
  type: string
  inputBinding:
    prefix: --out-root
- id: min_informative
  doc: Require at least <ninf_sites> "informative" sites -- i.e.,  sites at which
    at least two non-gap and non-missing-data ('N' or '*') characters are present.  Default
    is 50.
  type: string
  inputBinding:
    prefix: --min-informative
- id: gaps_as_bases
  doc: Treat alignment gap characters ('-') like ordinary bases.  By default, they
    are treated as missing data.
  type: boolean
  inputBinding:
    prefix: --gaps-as-bases
- id: ignore_branches
  doc: Ignore specified branches in likelihood computations and parameter estimation,
    and treat the induced subtrees as independent.  Can be useful for likelihood ratio
    tests.  The argument <branches> should be a comma-separated list of nodes in the
    tree, indicating the branches above these nodes, e.g., human-chimp,cow-dog.  (See
    tree_doctor --name-ancestors regarding names for ancestral nodes.) This option
    does not currently work with --EM.
  type: string
  inputBinding:
    prefix: --ignore-branches
- id: quiet
  doc: Proceed quietly.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: selection
  doc: Use selection in the model (is also implied if --init-model is used and contains
    selection parameter).  Selection scales rate matrix entries by selection_param/(1-exp(-selection-param));
    this is done after rate matrix is scaled to set expected number of substitutions
    per unit time to 1.  If using codon models selection acts only on nonysynonymous
    mutations.
  type: string
  inputBinding:
    prefix: --selection
- id: n_rates
  doc: (default 1).  Number of rate categories to use.  Specifying a value of greater
    than one causes the discrete gamma model for rate variation to be used (Yang,
    1994).
  type: string
  inputBinding:
    prefix: --nrates
- id: alpha
  doc: (for use with --nrates).  Initial value for alpha, the shape parameter of the
    gamma distribution.  Default is 1.
  type: string
  inputBinding:
    prefix: --alpha
- id: rate_constants
  doc: Use a non-parameteric mixture model for rates, instead of assuming a gamma
    distribution.  The argument <rate_consts> must be a comma-delimited list explicitly
    defining the rate constants to be used.  The "weight" (mixing proportion) associated
    with each rate constant will be estimated by EM (this option implies --EM).  If
    --alpha is used with this option, then the mixing proportions will be initialized
    to reflect a gamma distribution with the specified shape parameter.
  type: string
  inputBinding:
    prefix: --rate-constants
- id: do_cats
  doc: (optionally use with --features) Estimate models for only the specified categories
    (comma-delimited list categories, by name or numbera).  Default is to fit a model
    for every category.
  type: string
  inputBinding:
    prefix: --do-cats
- id: reverse_groups
  doc: (optionally use with --features) Group features by <tag> (e.g., "transcript_id"
    or "exon_id") and reverse complement segments of the alignment corresponding to
    groups on the reverse strand.  Groups must be non-overlapping (see refeature --unique).  Useful
    with categories corresponding to strand-specific phenomena (e.g., codon positions).
  type: string
  inputBinding:
    prefix: --reverse-groups
- id: markov
  doc: (for use with context-dependent substitutions models and not available with
    --EM.)  Assume Markov dependence of alignment columns, and compute the conditional
    probability of each column given its N-1 predecessors using the two-pass algorithm
    described by Siepel and Haussler (2004).  (Here, N is the "order" of the model,
    as defined by --subst-mod; e.g., N=1 for REV, N=2 for U2S, N=3 for U3S.) The alternative
    (the default) is simply to work with joint probabilities of tuples of columns.  (You
    can ensure that these tuples are non-overlapping with the --non-overlapping option.)  The
    use of joint probabilities during parameter estimation allows the use of the --EM
    option and can be much faster; in addition, it appears to produce nearly equivalent
    estimates.  If desired, parameters can be estimated without --markov, and then
    the likelihood can be evaluated using --lnl and --markov together.  This gives
    a lower bound on the likelihood of the Markov-dependent model.
  type: boolean
  inputBinding:
    prefix: --markov
- id: non_overlapping
  doc: (for use with context-dependent substitution models; not compatible with --markov,
    --features, or --msa-format SS) Avoid using overlapping tuples of sites in parameter
    estimation.  If a dinucleotide model is selected, every other tuple will be considered,
    and if a nucleotide triplet model is selected, every third tuple will be considered.  This
    option cannot be used with an alignment represented only by unordered sufficient
    statistics.
  type: boolean
  inputBinding:
    prefix: --non-overlapping
- id: tree
  doc: '"(human, (mouse,rat)mouse-rat, cow)" \'
  type: boolean
  inputBinding:
    prefix: --tree
- id: label_subtree
  doc: '"mouse-rat+:MR" \'
  type: boolean
  inputBinding:
    prefix: --label-subtree
- id: alt_model
  doc: '"MR:kappa[0,1]"'
  type: boolean
  inputBinding:
    prefix: --alt-model
- id: post_probs
  doc: Output posterior probabilities of all bases at all ancestral  nodes.  Output
    will be to auxiliary file(s) with suffix  ".postprobs".
  type: boolean
  inputBinding:
    prefix: --post-probs
- id: expected_subs
  doc: Output posterior expected number of substitutions on each branch at each site,
    summed across all types of substitutions.  Output will be to auxiliary file(s)
    with suffix ".expsub".
  type: boolean
  inputBinding:
    prefix: --expected-subs
- id: expected_subs_col
  doc: Output posterior expected number of substitutions of each type on each branch,
    for each site.  Output will be to auxiliary  file(s) with suffix .expcolsub
  type: boolean
  inputBinding:
    prefix: --expected-subs-col
- id: expected_total_subs
  doc: Output posterior expected number of substitutions of each type  on each branch,
    summed across all sites.  Output will be to  auxiliary file(s) with suffix ".exptotsub".
  type: boolean
  inputBinding:
    prefix: --expected-total-subs
- id: column_probs
  doc: (for use with -init-model; implies --lnl)  Output a separate log probability
    for each type of column in the input.  Output will be to a file with suffix ".colprobs".  Values
    are log base 2.
  type: boolean
  inputBinding:
    prefix: --column-probs
- id: windows_explicit
  doc: Like --windows, except that all start and end coordinates must be explicitly
    specified.  Each successive pair of numbers is interpreted as defining the start
    and end of a window.  Can be used with a two-column file and the '*' operator,
    e.g., --windows-explicit '*mycoords'.
  type: string
  inputBinding:
    prefix: --windows-explicit
outputs: []
cwlVersion: v1.1
baseCommand:
- phyloFit
