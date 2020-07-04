version 1.0

task PhyloFit {
  input {
    Boolean? cat_map
    String? out_root
    String? min_informative
    Boolean? gaps_as_bases
    String? ignore_branches
    Boolean? quiet
    String? selection
    String? n_rates
    String? alpha
    String? rate_constants
    String? do_cats
    String? reverse_groups
    Boolean? markov
    Boolean? non_overlapping
    Boolean? tree
    Boolean? label_subtree
    Boolean? alt_model
    Boolean? post_probs
    Boolean? expected_subs
    Boolean? expected_subs_col
    Boolean? expected_total_subs
    Boolean? column_probs
    String? windows_explicit
    String msa_fname
  }
  command <<<
    phyloFit \
      ~{msa_fname} \
      ~{true="--catmap" false="" cat_map} \
      ~{if defined(out_root) then ("--out-root " +  '"' + out_root + '"') else ""} \
      ~{if defined(min_informative) then ("--min-informative " +  '"' + min_informative + '"') else ""} \
      ~{true="--gaps-as-bases" false="" gaps_as_bases} \
      ~{if defined(ignore_branches) then ("--ignore-branches " +  '"' + ignore_branches + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(selection) then ("--selection " +  '"' + selection + '"') else ""} \
      ~{if defined(n_rates) then ("--nrates " +  '"' + n_rates + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(rate_constants) then ("--rate-constants " +  '"' + rate_constants + '"') else ""} \
      ~{if defined(do_cats) then ("--do-cats " +  '"' + do_cats + '"') else ""} \
      ~{if defined(reverse_groups) then ("--reverse-groups " +  '"' + reverse_groups + '"') else ""} \
      ~{true="--markov" false="" markov} \
      ~{true="--non-overlapping" false="" non_overlapping} \
      ~{true="--tree" false="" tree} \
      ~{true="--label-subtree" false="" label_subtree} \
      ~{true="--alt-model" false="" alt_model} \
      ~{true="--post-probs" false="" post_probs} \
      ~{true="--expected-subs" false="" expected_subs} \
      ~{true="--expected-subs-col" false="" expected_subs_col} \
      ~{true="--expected-total-subs" false="" expected_total_subs} \
      ~{true="--column-probs" false="" column_probs} \
      ~{if defined(windows_explicit) then ("--windows-explicit " +  '"' + windows_explicit + '"') else ""}
  >>>
  parameter_meta {
    cat_map: "\"NCATS = 3; CDS 1-3\" --do-cats 1,2,3 mammals.fa"
    out_root: "(default \"phyloFit\").  Use specified string as root filename for all files created."
    min_informative: "Require at least <ninf_sites> \"informative\" sites -- i.e.,  sites at which at least two non-gap and non-missing-data ('N' or '*') characters are present.  Default is 50."
    gaps_as_bases: "Treat alignment gap characters ('-') like ordinary bases.  By default, they are treated as missing data."
    ignore_branches: "Ignore specified branches in likelihood computations and parameter estimation, and treat the induced subtrees as independent.  Can be useful for likelihood ratio tests.  The argument <branches> should be a comma-separated list of nodes in the tree, indicating the branches above these nodes, e.g., human-chimp,cow-dog.  (See tree_doctor --name-ancestors regarding names for ancestral nodes.) This option does not currently work with --EM."
    quiet: "Proceed quietly."
    selection: "Use selection in the model (is also implied if --init-model is used and contains selection parameter).  Selection scales rate matrix entries by selection_param/(1-exp(-selection-param)); this is done after rate matrix is scaled to set expected number of substitutions per unit time to 1.  If using codon models selection acts only on nonysynonymous mutations."
    n_rates: "(default 1).  Number of rate categories to use.  Specifying a value of greater than one causes the discrete gamma model for rate variation to be used (Yang, 1994)."
    alpha: "(for use with --nrates).  Initial value for alpha, the shape parameter of the gamma distribution.  Default is 1."
    rate_constants: "Use a non-parameteric mixture model for rates, instead of assuming a gamma distribution.  The argument <rate_consts> must be a comma-delimited list explicitly defining the rate constants to be used.  The \"weight\" (mixing proportion) associated with each rate constant will be estimated by EM (this option implies --EM).  If --alpha is used with this option, then the mixing proportions will be initialized to reflect a gamma distribution with the specified shape parameter."
    do_cats: "(optionally use with --features) Estimate models for only the specified categories (comma-delimited list categories, by name or numbera).  Default is to fit a model for every category."
    reverse_groups: "(optionally use with --features) Group features by <tag> (e.g., \"transcript_id\" or \"exon_id\") and reverse complement segments of the alignment corresponding to groups on the reverse strand.  Groups must be non-overlapping (see refeature --unique).  Useful with categories corresponding to strand-specific phenomena (e.g., codon positions)."
    markov: "(for use with context-dependent substitutions models and not available with --EM.)  Assume Markov dependence of alignment columns, and compute the conditional probability of each column given its N-1 predecessors using the two-pass algorithm described by Siepel and Haussler (2004).  (Here, N is the \"order\" of the model, as defined by --subst-mod; e.g., N=1 for REV, N=2 for U2S, N=3 for U3S.) The alternative (the default) is simply to work with joint probabilities of tuples of columns.  (You can ensure that these tuples are non-overlapping with the --non-overlapping option.)  The use of joint probabilities during parameter estimation allows the use of the --EM option and can be much faster; in addition, it appears to produce nearly equivalent estimates.  If desired, parameters can be estimated without --markov, and then the likelihood can be evaluated using --lnl and --markov together.  This gives a lower bound on the likelihood of the Markov-dependent model."
    non_overlapping: "(for use with context-dependent substitution models; not compatible with --markov, --features, or --msa-format SS) Avoid using overlapping tuples of sites in parameter estimation.  If a dinucleotide model is selected, every other tuple will be considered, and if a nucleotide triplet model is selected, every third tuple will be considered.  This option cannot be used with an alignment represented only by unordered sufficient statistics."
    tree: "\"(human, (mouse,rat)mouse-rat, cow)\" \"
    label_subtree: "\"mouse-rat+:MR\" \"
    alt_model: "\"MR:kappa[0,1]\""
    post_probs: "Output posterior probabilities of all bases at all ancestral  nodes.  Output will be to auxiliary file(s) with suffix  \".postprobs\"."
    expected_subs: "Output posterior expected number of substitutions on each branch at each site, summed across all types of substitutions.  Output will be to auxiliary file(s) with suffix \".expsub\"."
    expected_subs_col: "Output posterior expected number of substitutions of each type on each branch, for each site.  Output will be to auxiliary  file(s) with suffix .expcolsub"
    expected_total_subs: "Output posterior expected number of substitutions of each type  on each branch, summed across all sites.  Output will be to  auxiliary file(s) with suffix \".exptotsub\"."
    column_probs: "(for use with -init-model; implies --lnl)  Output a separate log probability for each type of column in the input.  Output will be to a file with suffix \".colprobs\".  Values are log base 2."
    windows_explicit: "Like --windows, except that all start and end coordinates must be explicitly specified.  Each successive pair of numbers is interpreted as defining the start and end of a window.  Can be used with a two-column file and the '*' operator, e.g., --windows-explicit '*mycoords'."
    msa_fname: ""
  }
}