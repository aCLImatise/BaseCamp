version 1.0

task PhyloFit {
  input {
    File? features
    Int? _tree_
    Boolean? non_overlapping
    String? precision
    File? tree
    Int? subst_mod
    File? msa_format
    Int? min_informative
    Boolean? gaps_as_bases
    String? ignore_branches
    Boolean? quiet
    Boolean? lnl
    Boolean? em
    String? log
    String? in_it_model
    Boolean? in_it_random
    Int? seed
    Boolean? in_it_parsimony
    File? print_parsimony
    Boolean? clock
    Boolean? scale_only
    String? scale_subtree
    Boolean? estimate_freqs
    Boolean? sym_freqs
    Boolean? no_freqs
    Boolean? no_rates
    Int? ancestor
    File? error
    String? no_opt
    Boolean? bound
    Int? selection
    Int? n_rates
    Int? alpha
    String? rate_constants
    File? cat_map
    String? do_cats
    String? reverse_groups
    Boolean? markov
    Int? label_branches
    String? label_subtree
    Boolean? alt_model
    File? post_probs
    Boolean? expected_subs
    Boolean? expected_subs_col
    Boolean? expected_total_subs
    Boolean? column_probs
    Boolean? windows
    File? windows_explicit
    String frequencies_dot
  }
  command <<<
    phyloFit \
      ~{frequencies_dot} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(_tree_) then ("-o " +  '"' + _tree_ + '"') else ""} \
      ~{if (non_overlapping) then "--non-overlapping" else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(subst_mod) then ("--subst-mod " +  '"' + subst_mod + '"') else ""} \
      ~{if defined(msa_format) then ("--msa-format " +  '"' + msa_format + '"') else ""} \
      ~{if defined(min_informative) then ("--min-informative " +  '"' + min_informative + '"') else ""} \
      ~{if (gaps_as_bases) then "--gaps-as-bases" else ""} \
      ~{if defined(ignore_branches) then ("--ignore-branches " +  '"' + ignore_branches + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (lnl) then "--lnl" else ""} \
      ~{if (em) then "--EM" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(in_it_model) then ("--init-model " +  '"' + in_it_model + '"') else ""} \
      ~{if (in_it_random) then "--init-random" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (in_it_parsimony) then "--init-parsimony" else ""} \
      ~{if defined(print_parsimony) then ("--print-parsimony " +  '"' + print_parsimony + '"') else ""} \
      ~{if (clock) then "--clock" else ""} \
      ~{if (scale_only) then "--scale-only" else ""} \
      ~{if defined(scale_subtree) then ("--scale-subtree " +  '"' + scale_subtree + '"') else ""} \
      ~{if (estimate_freqs) then "--estimate-freqs" else ""} \
      ~{if (sym_freqs) then "--sym-freqs" else ""} \
      ~{if (no_freqs) then "--no-freqs" else ""} \
      ~{if (no_rates) then "--no-rates" else ""} \
      ~{if defined(ancestor) then ("--ancestor " +  '"' + ancestor + '"') else ""} \
      ~{if defined(error) then ("--error " +  '"' + error + '"') else ""} \
      ~{if defined(no_opt) then ("--no-opt " +  '"' + no_opt + '"') else ""} \
      ~{if (bound) then "--bound" else ""} \
      ~{if defined(selection) then ("--selection " +  '"' + selection + '"') else ""} \
      ~{if defined(n_rates) then ("--nrates " +  '"' + n_rates + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(rate_constants) then ("--rate-constants " +  '"' + rate_constants + '"') else ""} \
      ~{if defined(cat_map) then ("--catmap " +  '"' + cat_map + '"') else ""} \
      ~{if defined(do_cats) then ("--do-cats " +  '"' + do_cats + '"') else ""} \
      ~{if defined(reverse_groups) then ("--reverse-groups " +  '"' + reverse_groups + '"') else ""} \
      ~{if (markov) then "--markov" else ""} \
      ~{if defined(label_branches) then ("--label-branches " +  '"' + label_branches + '"') else ""} \
      ~{if defined(label_subtree) then ("--label-subtree " +  '"' + label_subtree + '"') else ""} \
      ~{if (alt_model) then "--alt-model" else ""} \
      ~{if (post_probs) then "--post-probs" else ""} \
      ~{if (expected_subs) then "--expected-subs" else ""} \
      ~{if (expected_subs_col) then "--expected-subs-col" else ""} \
      ~{if (expected_total_subs) then "--expected-total-subs" else ""} \
      ~{if (column_probs) then "--column-probs" else ""} \
      ~{if (windows) then "--windows" else ""} \
      ~{if defined(windows_explicit) then ("--windows-explicit " +  '"' + windows_explicit + '"') else ""}
  >>>
  parameter_meta {
    features: "Annotations file (GFF or BED format) describing features on\\none or more sequences in the alignment.  Together with a\\ncategory map (see --catmap), will be taken to define site\\ncategories, and a separate model will be estimated for each\\ncategory.  If no category map is specified, a category will be\\nassumed for each type of feature, and they will be numbered in\\nthe order of appearance of the features.  Features are assumed\\nto use the coordinate frame of the first sequence in the\\nalignment and should be non-overlapping (see 'refeature\\n--unique')."
    _tree_: "\\\").\\nphyloFit --tree \\\"((human,chimp),(mouse,rat))\\\" --subst-mod HKY85\\n--out-root myfile --nrates 4 --msa-format SS\\nprimate-rodent.ss"
    non_overlapping: "(for use with context-dependent substitution models; not\\ncompatible with --markov, --features, or\\n--msa-format SS) Avoid using overlapping tuples of sites\\nin parameter estimation.  If a dinucleotide model is selected,\\nevery other tuple will be considered, and if a nucleotide\\ntriplet model is selected, every third tuple will be\\nconsidered.  This option cannot be used with an alignment\\nrepresented only by unordered sufficient statistics."
    precision: "|MED|LOW\\n(default HIGH) Level of precision to use in estimating model\\nparameters.  Affects convergence criteria for iterative\\nalgorithms: higher precision means more iterations and longer\\nexecution time."
    tree: "|<tree_string>\\n(Required if more than three species, or more than two species\\nand a non-reversible substitution model, e.g., UNREST, U2, U3)\\nName of file or literal string defining tree topology.  Tree\\nmust be in Newick format, with the label at each leaf equal to\\nthe index or name of the corresponding sequence in the alignment\\n(indexing begins with 1).  Examples: --tree \\\"(1,(2,3))\\\",\\n--tree \\\"(human,(mouse,rat))\\\".  Currently, the topology must be\\nrooted.  When a reversible substitution model is used, the root\\nis ignored during the optimization procedure."
    subst_mod: "|F81|HKY85|HKY85+Gap|REV|SSREV|UNREST|R2|R2S|U2|U2S|R3|R3S|U3|U3S\\n(default REV).  Nucleotide substitution model.  JC69, F81, HKY85\\nREV, and UNREST have the usual meanings (see, e.g., Yang,\\nGoldman, and Friday, 1994).  SSREV is a strand-symmetric version\\nof REV.  HKY85+Gap is an adaptation of HKY that treats gaps as a\\nfifth character (courtesy of James Taylor).  The others, all\\nconsidered \\\"context-dependent\\\", are as defined in Siepel and\\nHaussler, 2004.  The options --EM and --precision MED are\\nrecommended with context-dependent models (see below)."
    msa_format: "|PHYLIP|MPM|MAF|SS\\n(default is to guess format from file contents) Alignment format.\\nFASTA is as usual.  PHYLIP is compatible with the formats used in\\nthe PHYLIP and PAML packages.  MPM is the format used by the\\nMultiPipMaker aligner and some other of Webb Miller's older tools.\\nMAF (\\\"Multiple Alignment Format\\\") is used by MULTIZ/TBA and the\\nUCSC Genome Browser.  SS is a simple format describing the\\nsufficient statistics for phylogenetic inference (distinct columns\\nor tuple of columns and their counts).  Note that the program\\n\\\"msa_view\\\" can be used for file conversion."
    min_informative: "Require at least <ninf_sites> \\\"informative\\\" sites -- i.e.,\\nsites at which at least two non-gap and non-missing-data ('N'\\nor '*') characters are present.  Default is 50."
    gaps_as_bases: "Treat alignment gap characters ('-') like ordinary bases.  By\\ndefault, they are treated as missing data."
    ignore_branches: "Ignore specified branches in likelihood computations and parameter\\nestimation, and treat the induced subtrees as independent.  Can be\\nuseful for likelihood ratio tests.  The argument <branches> should\\nbe a comma-separated list of nodes in the tree, indicating the\\nbranches above these nodes, e.g., human-chimp,cow-dog.  (See\\ntree_doctor --name-ancestors regarding names for ancestral nodes.)\\nThis option does not currently work with --EM."
    quiet: "Proceed quietly."
    lnl: "(for use with --init-model) Simply evaluate the log likelihood of\\nthe specified tree model, without performing any further\\noptimization.  Can be used with --post-probs, --expected-subs, and\\n--expected-total-subs."
    em: "Fit model(s) using EM rather than the BFGS quasi-Newton\\nalgorithm (the default)."
    log: "Write log to <log_fname> describing details of the optimization\\nprocedure."
    in_it_model: "Initialize with specified tree model.  By choosing good\\nstarting values for parameters, it is possible to reduce\\nexecution time dramatically.  If this option is chosen, --tree\\nis not allowed.  The substitution model used in the given\\nmodel will be used unless --subst-mod is also specified.\\nNote: currently only one mod_fname may be specified; it will be\\nused for all categories."
    in_it_random: "Initialize parameters randomly.  Can be used multiple times to test\\nwhether the m.l.e. is real."
    seed: "Provide a random number seed for choosing initial parameter values\\n(usually with --init-random, though random values are used in some\\nother cases as well).  Should be an integer >=1.  If not provided,\\nseed is chosen based on current time."
    in_it_parsimony: "Initialize branch lengths using parsimony counts for given data.\\nOnly currently implemented for models with single character state\\n(ie, not di- or tri-nucleotides).  Other --init options such\\nas --init-random or --init-model can be used in conjunction to\\ninitialize substitution matrix parameters."
    print_parsimony: "Print parsimony score to given file, and quit.  (Does not optimize\\nor report likelihoods)."
    clock: "Assume a molecular clock in estimation.  Causes the distances to all\\ndescendant leaves to be equal for each ancestral node and cuts the\\nnumber of free branch-length parameters roughly in half."
    scale_only: "(for use with --init-model) Estimate only the scale of the tree,\\nrather than individual branch lengths (branch proportions fixed).\\nEquilibrium frequencies and rate-matrix parameters will still be\\nestimated unless --no-freqs and --no-rates are used."
    scale_subtree: "(for use with --scale-only) Estimate separate scale factors for\\nsubtree beneath identified node and rest of tree.  The branch\\nleading to the subtree is included with the subtree.  If \\\":loss\\\" or\\n\\\":gain\\\" is appended to <node_name>, subtree scale is constrained to\\nbe greater than or less than (respectively) scale for rest of tree."
    estimate_freqs: "Estimate equilibrium frequencies by maximum likelihood, rather\\nthan approximating them by the relative frequencies in the data.\\nIf using the SSREV model, this option implies --sym-freqs."
    sym_freqs: "Estimate equilibrium frequencies, assuming freq(A)=freq(T) and\\nfreq(C)=freq(G).  This only works for an alphabet ACGT (and possibly\\ngap).  This option implies --estimate-freqs."
    no_freqs: "(for use with --init-model) Do not estimate equilibrium\\nfrequencies; just use the ones from the given tree model."
    no_rates: "(for use with --init-model) Do not estimate rate-matrix\\nparameters; just use the ones from the given tree model."
    ancestor: "Treat specified sequence as the root of the tree.  The tree\\ntopology must define this sequence to be a child of the root\\n(in practice, the branch from the root to the specified\\nsequence will be retained, but will be constrained to have\\nlength zero)."
    error: "For each parameter, report estimate, variance, and 95%% confidence\\ninterval, printed to given filename, one parameter per line."
    no_opt: "Hold parameters listed in comma-separated param_list constant at\\ninitial values.  This applies only to the \\\"main\\\" model, and not to\\nany models defined with the --alt-mod option.  Param list can\\ncontain values such as \\\"branches\\\" to hold branch lengths constant,\\n\\\"ratematrix\\\", \\\"backgd\\\", or \\\"ratevar\\\" to hold entire rate matrix,\\nequilibrium frequencies, or rate variation parameters constant\\n(respectively).  There are also substitution model-specific\\nparameters such as \\\"kappa\\\" (transition/transversion rate ratio).\\nNote: to hold certain branches constant, but optimize others,\\nput an exclamation point in the newick-formatted tree after the\\nbranch lengths that should be held constant.  This can be useful\\nfor enforcing a star-phylogeny.  However, note that the two branches\\ncoming from root of tree are treated as one.  So they should both\\nbe held constant, or not held constant.  This option does *not* work\\nwith --scale-only or --clock."
    bound: "<param_name[lower_bound,upper_bound]>\\nSet boundaries for parameter.  lower_bound or upper_bound may be\\nempty string to keep default.  For example --bound gc_param[1,] will\\nset the lower bound for gc_param to 1 (keeping upper bound at infinity),\\nfor a GC model.  Only applies to parameters for model in the \\\"main\\\"\\ntree, but similar syntax can be used within the --alt-mod arguments.\\nCan be used multiple times to set boundaries for different parameters."
    selection: "Use selection in the model (is also implied if --init-model is used\\nand contains selection parameter).  Selection scales rate matrix\\nentries by selection_param/(1-exp(-selection-param)); this is done\\nafter rate matrix is scaled to set expected number of substitutions\\nper unit time to 1.  If using codon models selection acts only on\\nnonysynonymous mutations."
    n_rates: "(default 1).  Number of rate categories to use.  Specifying a\\nvalue of greater than one causes the discrete gamma model for\\nrate variation to be used (Yang, 1994)."
    alpha: "(for use with --nrates).  Initial value for alpha, the shape\\nparameter of the gamma distribution.  Default is 1."
    rate_constants: "Use a non-parameteric mixture model for rates, instead of\\nassuming a gamma distribution.  The argument <rate_consts>\\nmust be a comma-delimited list explicitly defining the rate\\nconstants to be used.  The \\\"weight\\\" (mixing proportion)\\nassociated with each rate constant will be estimated by EM\\n(this option implies --EM).  If --alpha is used with\\nthis option, then the mixing proportions will be initialized\\nto reflect a gamma distribution with the specified shape\\nparameter."
    cat_map: "|<string>\\n(optionally use with --features) Mapping of feature types to\\ncategory numbers.  Can either give a filename or an \\\"inline\\\"\\ndescription of a simple category map, e.g., --catmap \\\"NCATS =\\n3 ; CDS 1-3\\\" or --catmap \\\"NCATS = 1 ; UTR 1\\\".  Note that\\ncategory 0 is reserved for \\\"background\\\" (everything that is\\nnot described by a defined feature type)."
    do_cats: "(optionally use with --features) Estimate models for only the\\nspecified categories (comma-delimited list categories, by name\\nor numbera).  Default is to fit a model for every category."
    reverse_groups: "(optionally use with --features) Group features by <tag> (e.g.,\\n\\\"transcript_id\\\" or \\\"exon_id\\\") and reverse complement\\nsegments of the alignment corresponding to groups on the\\nreverse strand.  Groups must be non-overlapping (see refeature\\n--unique).  Useful with categories corresponding to\\nstrand-specific phenomena (e.g., codon positions)."
    markov: "(for use with context-dependent substitutions models and not\\navailable with --EM.)  Assume Markov dependence of alignment\\ncolumns, and compute the conditional probability of each\\ncolumn given its N-1 predecessors using the two-pass algorithm\\ndescribed by Siepel and Haussler (2004).  (Here, N is the\\n\\\"order\\\" of the model, as defined by --subst-mod; e.g., N=1\\nfor REV, N=2 for U2S, N=3 for U3S.) The alternative (the\\ndefault) is simply to work with joint probabilities of tuples\\nof columns.  (You can ensure that these tuples are\\nnon-overlapping with the --non-overlapping option.)  The use\\nof joint probabilities during parameter estimation allows the\\nuse of the --EM option and can be much faster; in addition, it\\nappears to produce nearly equivalent estimates.  If desired,\\nparameters can be estimated without --markov, and\\nthen the likelihood can be evaluated using --lnl and\\n--markov together.  This gives a lower bound on the\\nlikelihood of the Markov-dependent model."
    label_branches: ",branch2,branch3...:label\\nCreate a group of branches by giving a set of branches a\\nsingle label.  The label should be a word which does not\\ncontain special characters (in particular, no spaces, brackets,\\nparentheses, pound signs, commas, or colons).\\nThe label is for use with --alt-model option below, so that an\\nalternate model can be defined for a set of branches.  A branch\\nis specified by the name of the node which is a descendant of\\nthat branch.\\nFor example,\\n--label-branches hg18,chimp,hg18-chimp:HC\\nwill apply the label \\\"HC\\\" to the hg18,chimp,and hg18-chimp\\nbranches in the following tree:\\n(((hg18,chimp)hg18-chimp, (mouse,rat)mouse-rat)\\nThe same label could be defined without using --label-branches\\nby specifing the tree (either on the command-line or within\\ninit-model) as follows:\\n(((hg18 # HC, chimp #HC)#HC, (mouse,rat))"
    label_subtree: "[+]:label\\nSimilar to label-branches, except labels the entire subtree\\nof the named node.  If the node name is followed by a \\\"+\\\" sign,\\nthen includes the branch leading up to the node in the subtree."
    alt_model: "<label:(model|param_list)>\\nCreate a lineage-specific substitution model on a group of branches.\\nThe group is defined by a label, which can be specified within\\nthe tree string (using the # sign notation), or by using the\\n--label-branches or --label-subtree arguments.  If the alt-model\\napplies to only a single branch, labelling is not necessary and\\nthe name of the node descending from the branch can be used instead.\\nSee --label-branches above for more details on labelling groups of\\nbranches.\\nIf a name of a substitution model (HKY85, REV, UNREST, etc)\\nis given after the colon, then this model will be used for the\\ngroup of branches, and parameters relevant to the model will be\\nestimated separately in this group.  This model may be different\\n(or the same) as the model used in the rest of the tree, but it\\nmust have the same number of states and be of the same order as\\nthe model used for the rest of the tree.\\nAlternately, a list of parameter names can be given after the colon.\\nIn this case, the same substitution model will be used for the\\nentire tree, but the parameters listed will be estimated separately\\nin the specified group of branches.\\nThe parameter names are model-specific, and include \\\"kappa\\\" for\\nHKY models, \\\"alpha\\\" for GC models, \\\"ratematrix\\\" to specify\\nall rate-matrix parameters in general models, and \\\"backgd\\\" for\\nthe equilibrium background frequencies.  The parameter names\\nmay optionally be followed by boundaries in square brackets to\\nspecify parameter bounds, as described in --bound option.\\nThe --alt-model argument may be used multiple times, if one\\nwishes to (for example) optimize a parameter independently\\non several different groups of branches.\\nExample:\\nphyloFit align.fa --subst-mod HKY85 \\\\n--tree \\\"(human, (mouse#MR, rat#MR)#MR, cow)\\\"\\\\n--alt-model \\\"MR:kappa[0, 1]\\\"\\nwill estimate the HKY85 parameter kappa separately on the\\nmouse/rat subtree, and constrain kappa between 0 and 1.  The\\nquotes are often necessary to prevent the square brakcets from\\nbeing parsed by the shell.  The same model could be achieved with:\\nphyloFit align.fa --subst-mod HKY85 \\\\n--tree \\\"(human, (mouse,rat)mouse-rat, cow)\\\"\\\\n--label-branches mouse,rat,mouse-rat:MR \\\\n--alt-model \\\"MR:kappa[0,1]\\\"\\nor\\nphyloFit align.fa --subst-mod HKY85 \\\\n--tree \\\"(human, (mouse,rat)mouse-rat, cow)\\\" \\\\n--label-subtree \\\"mouse-rat+:MR\\\" \\\\n--alt-model \\\"MR:kappa[0,1]\\\""
    post_probs: "Output posterior probabilities of all bases at all ancestral\\nnodes.  Output will be to auxiliary file(s) with suffix\\n\\\".postprobs\\\"."
    expected_subs: "Output posterior expected number of substitutions on each branch at\\neach site, summed across all types of substitutions.\\nOutput will be to auxiliary file(s) with suffix \\\".expsub\\\"."
    expected_subs_col: "Output posterior expected number of substitutions of each type\\non each branch, for each site.  Output will be to auxiliary\\nfile(s) with suffix .expcolsub"
    expected_total_subs: "Output posterior expected number of substitutions of each type\\non each branch, summed across all sites.  Output will be to\\nauxiliary file(s) with suffix \\\".exptotsub\\\"."
    column_probs: "(for use with -init-model; implies --lnl)  Output a separate log\\nprobability for each type of column in the input.  Output will\\nbe to a file with suffix \\\".colprobs\\\".  Values are log base 2."
    windows: "<size,shift>\\nApply a sliding window to the alignment, and fit a separate\\ntree to each window.  Arguments specify size of window and\\namount by which to shift it on each iteration, both in bases\\nof the first sequence in the alignment (assumed to be the\\nreference sequence).  Separate versions of all output files\\nwill be created for each window."
    windows_explicit: "Like --windows, except that all start and end coordinates must\\nbe explicitly specified.  Each successive pair of numbers is\\ninterpreted as defining the start and end of a window.  Can be\\nused with a two-column file and the '*' operator, e.g.,\\n--windows-explicit '*mycoords'."
    frequencies_dot: "They may also include information about parameters"
  }
  output {
    File out_stdout = stdout()
    File out_post_probs = "${in_post_probs}"
  }
}