class: CommandLineTool
id: phyloFit.cwl
inputs:
- id: in_features
  doc: "Annotations file (GFF or BED format) describing features on\none or more sequences\
    \ in the alignment.  Together with a\ncategory map (see --catmap), will be taken\
    \ to define site\ncategories, and a separate model will be estimated for each\n\
    category.  If no category map is specified, a category will be\nassumed for each\
    \ type of feature, and they will be numbered in\nthe order of appearance of the\
    \ features.  Features are assumed\nto use the coordinate frame of the first sequence\
    \ in the\nalignment and should be non-overlapping (see 'refeature\n--unique')."
  type: File?
  inputBinding:
    prefix: --features
- id: in__tree_hkyoutroot
  doc: "\").\nphyloFit --tree \"((human,chimp),(mouse,rat))\" --subst-mod HKY85\n\
    --out-root myfile --nrates 4 --msa-format SS\nprimate-rodent.ss"
  type: long?
  inputBinding:
    prefix: -o
- id: in_tree
  doc: "|<tree_string>\n(Required if more than three species, or more than two species\n\
    and a non-reversible substitution model, e.g., UNREST, U2, U3)\nName of file or\
    \ literal string defining tree topology.  Tree\nmust be in Newick format, with\
    \ the label at each leaf equal to\nthe index or name of the corresponding sequence\
    \ in the alignment\n(indexing begins with 1).  Examples: --tree \"(1,(2,3))\"\
    ,\n--tree \"(human,(mouse,rat))\".  Currently, the topology must be\nrooted. \
    \ When a reversible substitution model is used, the root\nis ignored during the\
    \ optimization procedure."
  type: File?
  inputBinding:
    prefix: --tree
- id: in_subst_mod
  doc: "|F81|HKY85|HKY85+Gap|REV|SSREV|UNREST|R2|R2S|U2|U2S|R3|R3S|U3|U3S\n(default\
    \ REV).  Nucleotide substitution model.  JC69, F81, HKY85\nREV, and UNREST have\
    \ the usual meanings (see, e.g., Yang,\nGoldman, and Friday, 1994).  SSREV is\
    \ a strand-symmetric version\nof REV.  HKY85+Gap is an adaptation of HKY that\
    \ treats gaps as a\nfifth character (courtesy of James Taylor).  The others, all\n\
    considered \"context-dependent\", are as defined in Siepel and\nHaussler, 2004.\
    \  The options --EM and --precision MED are\nrecommended with context-dependent\
    \ models (see below)."
  type: long?
  inputBinding:
    prefix: --subst-mod
- id: in_msa_format
  doc: "|PHYLIP|MPM|MAF|SS\n(default is to guess format from file contents) Alignment\
    \ format.\nFASTA is as usual.  PHYLIP is compatible with the formats used in\n\
    the PHYLIP and PAML packages.  MPM is the format used by the\nMultiPipMaker aligner\
    \ and some other of Webb Miller's older tools.\nMAF (\"Multiple Alignment Format\"\
    ) is used by MULTIZ/TBA and the\nUCSC Genome Browser.  SS is a simple format describing\
    \ the\nsufficient statistics for phylogenetic inference (distinct columns\nor\
    \ tuple of columns and their counts).  Note that the program\n\"msa_view\" can\
    \ be used for file conversion."
  type: File?
  inputBinding:
    prefix: --msa-format
- id: in_out_root
  doc: "(default \"phyloFit\").  Use specified string as root filename\nfor all files\
    \ created."
  type: File?
  inputBinding:
    prefix: --out-root
- id: in_min_informative
  doc: "Require at least <ninf_sites> \"informative\" sites -- i.e.,\nsites at which\
    \ at least two non-gap and non-missing-data ('N'\nor '*') characters are present.\
    \  Default is 50."
  type: long?
  inputBinding:
    prefix: --min-informative
- id: in_gaps_as_bases
  doc: "Treat alignment gap characters ('-') like ordinary bases.  By\ndefault, they\
    \ are treated as missing data."
  type: boolean?
  inputBinding:
    prefix: --gaps-as-bases
- id: in_ignore_branches
  doc: "Ignore specified branches in likelihood computations and parameter\nestimation,\
    \ and treat the induced subtrees as independent.  Can be\nuseful for likelihood\
    \ ratio tests.  The argument <branches> should\nbe a comma-separated list of nodes\
    \ in the tree, indicating the\nbranches above these nodes, e.g., human-chimp,cow-dog.\
    \  (See\ntree_doctor --name-ancestors regarding names for ancestral nodes.)\n\
    This option does not currently work with --EM."
  type: string?
  inputBinding:
    prefix: --ignore-branches
- id: in_quiet
  doc: Proceed quietly.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_lnl
  doc: "(for use with --init-model) Simply evaluate the log likelihood of\nthe specified\
    \ tree model, without performing any further\noptimization.  Can be used with\
    \ --post-probs, --expected-subs, and\n--expected-total-subs."
  type: boolean?
  inputBinding:
    prefix: --lnl
- id: in_em
  doc: "Fit model(s) using EM rather than the BFGS quasi-Newton\nalgorithm (the default)."
  type: boolean?
  inputBinding:
    prefix: --EM
- id: in_precision
  doc: "|MED|LOW\n(default HIGH) Level of precision to use in estimating model\nparameters.\
    \  Affects convergence criteria for iterative\nalgorithms: higher precision means\
    \ more iterations and longer\nexecution time."
  type: string?
  inputBinding:
    prefix: --precision
- id: in_log
  doc: "Write log to <log_fname> describing details of the optimization\nprocedure."
  type: string?
  inputBinding:
    prefix: --log
- id: in_in_it_model
  doc: "Initialize with specified tree model.  By choosing good\nstarting values for\
    \ parameters, it is possible to reduce\nexecution time dramatically.  If this\
    \ option is chosen, --tree\nis not allowed.  The substitution model used in the\
    \ given\nmodel will be used unless --subst-mod is also specified.\nNote: currently\
    \ only one mod_fname may be specified; it will be\nused for all categories."
  type: string?
  inputBinding:
    prefix: --init-model
- id: in_in_it_random
  doc: "Initialize parameters randomly.  Can be used multiple times to test\nwhether\
    \ the m.l.e. is real."
  type: boolean?
  inputBinding:
    prefix: --init-random
- id: in_seed
  doc: "Provide a random number seed for choosing initial parameter values\n(usually\
    \ with --init-random, though random values are used in some\nother cases as well).\
    \  Should be an integer >=1.  If not provided,\nseed is chosen based on current\
    \ time."
  type: long?
  inputBinding:
    prefix: --seed
- id: in_in_it_parsimony
  doc: "Initialize branch lengths using parsimony counts for given data.\nOnly currently\
    \ implemented for models with single character state\n(ie, not di- or tri-nucleotides).\
    \  Other --init options such\nas --init-random or --init-model can be used in\
    \ conjunction to\ninitialize substitution matrix parameters."
  type: boolean?
  inputBinding:
    prefix: --init-parsimony
- id: in_print_parsimony
  doc: "Print parsimony score to given file, and quit.  (Does not optimize\nor report\
    \ likelihoods)."
  type: File?
  inputBinding:
    prefix: --print-parsimony
- id: in_clock
  doc: "Assume a molecular clock in estimation.  Causes the distances to all\ndescendant\
    \ leaves to be equal for each ancestral node and cuts the\nnumber of free branch-length\
    \ parameters roughly in half."
  type: boolean?
  inputBinding:
    prefix: --clock
- id: in_scale_only
  doc: "(for use with --init-model) Estimate only the scale of the tree,\nrather than\
    \ individual branch lengths (branch proportions fixed).\nEquilibrium frequencies\
    \ and rate-matrix parameters will still be\nestimated unless --no-freqs and --no-rates\
    \ are used."
  type: boolean?
  inputBinding:
    prefix: --scale-only
- id: in_scale_subtree
  doc: "(for use with --scale-only) Estimate separate scale factors for\nsubtree beneath\
    \ identified node and rest of tree.  The branch\nleading to the subtree is included\
    \ with the subtree.  If \":loss\" or\n\":gain\" is appended to <node_name>, subtree\
    \ scale is constrained to\nbe greater than or less than (respectively) scale for\
    \ rest of tree."
  type: string?
  inputBinding:
    prefix: --scale-subtree
- id: in_estimate_freqs
  doc: "Estimate equilibrium frequencies by maximum likelihood, rather\nthan approximating\
    \ them by the relative frequencies in the data.\nIf using the SSREV model, this\
    \ option implies --sym-freqs."
  type: boolean?
  inputBinding:
    prefix: --estimate-freqs
- id: in_sym_freqs
  doc: "Estimate equilibrium frequencies, assuming freq(A)=freq(T) and\nfreq(C)=freq(G).\
    \  This only works for an alphabet ACGT (and possibly\ngap).  This option implies\
    \ --estimate-freqs."
  type: boolean?
  inputBinding:
    prefix: --sym-freqs
- id: in_no_freqs
  doc: "(for use with --init-model) Do not estimate equilibrium\nfrequencies; just\
    \ use the ones from the given tree model."
  type: boolean?
  inputBinding:
    prefix: --no-freqs
- id: in_no_rates
  doc: "(for use with --init-model) Do not estimate rate-matrix\nparameters; just\
    \ use the ones from the given tree model."
  type: boolean?
  inputBinding:
    prefix: --no-rates
- id: in_ancestor
  doc: "Treat specified sequence as the root of the tree.  The tree\ntopology must\
    \ define this sequence to be a child of the root\n(in practice, the branch from\
    \ the root to the specified\nsequence will be retained, but will be constrained\
    \ to have\nlength zero)."
  type: long?
  inputBinding:
    prefix: --ancestor
- id: in_error
  doc: "For each parameter, report estimate, variance, and 95%% confidence\ninterval,\
    \ printed to given filename, one parameter per line."
  type: File?
  inputBinding:
    prefix: --error
- id: in_no_opt
  doc: "Hold parameters listed in comma-separated param_list constant at\ninitial\
    \ values.  This applies only to the \"main\" model, and not to\nany models defined\
    \ with the --alt-mod option.  Param list can\ncontain values such as \"branches\"\
    \ to hold branch lengths constant,\n\"ratematrix\", \"backgd\", or \"ratevar\"\
    \ to hold entire rate matrix,\nequilibrium frequencies, or rate variation parameters\
    \ constant\n(respectively).  There are also substitution model-specific\nparameters\
    \ such as \"kappa\" (transition/transversion rate ratio).\nNote: to hold certain\
    \ branches constant, but optimize others,\nput an exclamation point in the newick-formatted\
    \ tree after the\nbranch lengths that should be held constant.  This can be useful\n\
    for enforcing a star-phylogeny.  However, note that the two branches\ncoming from\
    \ root of tree are treated as one.  So they should both\nbe held constant, or\
    \ not held constant.  This option does *not* work\nwith --scale-only or --clock."
  type: string?
  inputBinding:
    prefix: --no-opt
- id: in_bound
  doc: "<param_name[lower_bound,upper_bound]>\nSet boundaries for parameter.  lower_bound\
    \ or upper_bound may be\nempty string to keep default.  For example --bound gc_param[1,]\
    \ will\nset the lower bound for gc_param to 1 (keeping upper bound at infinity),\n\
    for a GC model.  Only applies to parameters for model in the \"main\"\ntree, but\
    \ similar syntax can be used within the --alt-mod arguments.\nCan be used multiple\
    \ times to set boundaries for different parameters."
  type: boolean?
  inputBinding:
    prefix: --bound
- id: in_selection
  doc: "Use selection in the model (is also implied if --init-model is used\nand contains\
    \ selection parameter).  Selection scales rate matrix\nentries by selection_param/(1-exp(-selection-param));\
    \ this is done\nafter rate matrix is scaled to set expected number of substitutions\n\
    per unit time to 1.  If using codon models selection acts only on\nnonysynonymous\
    \ mutations."
  type: long?
  inputBinding:
    prefix: --selection
- id: in_n_rates
  doc: "(default 1).  Number of rate categories to use.  Specifying a\nvalue of greater\
    \ than one causes the discrete gamma model for\nrate variation to be used (Yang,\
    \ 1994)."
  type: long?
  inputBinding:
    prefix: --nrates
- id: in_alpha
  doc: "(for use with --nrates).  Initial value for alpha, the shape\nparameter of\
    \ the gamma distribution.  Default is 1."
  type: long?
  inputBinding:
    prefix: --alpha
- id: in_rate_constants
  doc: "Use a non-parameteric mixture model for rates, instead of\nassuming a gamma\
    \ distribution.  The argument <rate_consts>\nmust be a comma-delimited list explicitly\
    \ defining the rate\nconstants to be used.  The \"weight\" (mixing proportion)\n\
    associated with each rate constant will be estimated by EM\n(this option implies\
    \ --EM).  If --alpha is used with\nthis option, then the mixing proportions will\
    \ be initialized\nto reflect a gamma distribution with the specified shape\nparameter."
  type: string?
  inputBinding:
    prefix: --rate-constants
- id: in_cat_map
  doc: "|<string>\n(optionally use with --features) Mapping of feature types to\n\
    category numbers.  Can either give a filename or an \"inline\"\ndescription of\
    \ a simple category map, e.g., --catmap \"NCATS =\n3 ; CDS 1-3\" or --catmap \"\
    NCATS = 1 ; UTR 1\".  Note that\ncategory 0 is reserved for \"background\" (everything\
    \ that is\nnot described by a defined feature type)."
  type: File?
  inputBinding:
    prefix: --catmap
- id: in_do_cats
  doc: "(optionally use with --features) Estimate models for only the\nspecified categories\
    \ (comma-delimited list categories, by name\nor numbera).  Default is to fit a\
    \ model for every category."
  type: string?
  inputBinding:
    prefix: --do-cats
- id: in_reverse_groups
  doc: "(optionally use with --features) Group features by <tag> (e.g.,\n\"transcript_id\"\
    \ or \"exon_id\") and reverse complement\nsegments of the alignment corresponding\
    \ to groups on the\nreverse strand.  Groups must be non-overlapping (see refeature\n\
    --unique).  Useful with categories corresponding to\nstrand-specific phenomena\
    \ (e.g., codon positions)."
  type: string?
  inputBinding:
    prefix: --reverse-groups
- id: in_markov
  doc: "(for use with context-dependent substitutions models and not\navailable with\
    \ --EM.)  Assume Markov dependence of alignment\ncolumns, and compute the conditional\
    \ probability of each\ncolumn given its N-1 predecessors using the two-pass algorithm\n\
    described by Siepel and Haussler (2004).  (Here, N is the\n\"order\" of the model,\
    \ as defined by --subst-mod; e.g., N=1\nfor REV, N=2 for U2S, N=3 for U3S.) The\
    \ alternative (the\ndefault) is simply to work with joint probabilities of tuples\n\
    of columns.  (You can ensure that these tuples are\nnon-overlapping with the --non-overlapping\
    \ option.)  The use\nof joint probabilities during parameter estimation allows\
    \ the\nuse of the --EM option and can be much faster; in addition, it\nappears\
    \ to produce nearly equivalent estimates.  If desired,\nparameters can be estimated\
    \ without --markov, and\nthen the likelihood can be evaluated using --lnl and\n\
    --markov together.  This gives a lower bound on the\nlikelihood of the Markov-dependent\
    \ model."
  type: boolean?
  inputBinding:
    prefix: --markov
- id: in_non_overlapping
  doc: "(for use with context-dependent substitution models; not\ncompatible with\
    \ --markov, --features, or\n--msa-format SS) Avoid using overlapping tuples of\
    \ sites\nin parameter estimation.  If a dinucleotide model is selected,\nevery\
    \ other tuple will be considered, and if a nucleotide\ntriplet model is selected,\
    \ every third tuple will be\nconsidered.  This option cannot be used with an alignment\n\
    represented only by unordered sufficient statistics."
  type: boolean?
  inputBinding:
    prefix: --non-overlapping
- id: in_label_branches
  doc: ",branch2,branch3...:label\nCreate a group of branches by giving a set of branches\
    \ a\nsingle label.  The label should be a word which does not\ncontain special\
    \ characters (in particular, no spaces, brackets,\nparentheses, pound signs, commas,\
    \ or colons).\nThe label is for use with --alt-model option below, so that an\n\
    alternate model can be defined for a set of branches.  A branch\nis specified\
    \ by the name of the node which is a descendant of\nthat branch.\nFor example,\n\
    --label-branches hg18,chimp,hg18-chimp:HC\nwill apply the label \"HC\" to the\
    \ hg18,chimp,and hg18-chimp\nbranches in the following tree:\n(((hg18,chimp)hg18-chimp,\
    \ (mouse,rat)mouse-rat)\nThe same label could be defined without using --label-branches\n\
    by specifing the tree (either on the command-line or within\ninit-model) as follows:\n\
    (((hg18 # HC, chimp #HC)#HC, (mouse,rat))"
  type: long?
  inputBinding:
    prefix: --label-branches
- id: in_label_subtree
  doc: "[+]:label\nSimilar to label-branches, except labels the entire subtree\nof\
    \ the named node.  If the node name is followed by a \"+\" sign,\nthen includes\
    \ the branch leading up to the node in the subtree."
  type: string?
  inputBinding:
    prefix: --label-subtree
- id: in_alt_model
  doc: "<label:(model|param_list)>\nCreate a lineage-specific substitution model on\
    \ a group of branches.\nThe group is defined by a label, which can be specified\
    \ within\nthe tree string (using the # sign notation), or by using the\n--label-branches\
    \ or --label-subtree arguments.  If the alt-model\napplies to only a single branch,\
    \ labelling is not necessary and\nthe name of the node descending from the branch\
    \ can be used instead.\nSee --label-branches above for more details on labelling\
    \ groups of\nbranches.\nIf a name of a substitution model (HKY85, REV, UNREST,\
    \ etc)\nis given after the colon, then this model will be used for the\ngroup\
    \ of branches, and parameters relevant to the model will be\nestimated separately\
    \ in this group.  This model may be different\n(or the same) as the model used\
    \ in the rest of the tree, but it\nmust have the same number of states and be\
    \ of the same order as\nthe model used for the rest of the tree.\nAlternately,\
    \ a list of parameter names can be given after the colon.\nIn this case, the same\
    \ substitution model will be used for the\nentire tree, but the parameters listed\
    \ will be estimated separately\nin the specified group of branches.\nThe parameter\
    \ names are model-specific, and include \"kappa\" for\nHKY models, \"alpha\" for\
    \ GC models, \"ratematrix\" to specify\nall rate-matrix parameters in general\
    \ models, and \"backgd\" for\nthe equilibrium background frequencies.  The parameter\
    \ names\nmay optionally be followed by boundaries in square brackets to\nspecify\
    \ parameter bounds, as described in --bound option.\nThe --alt-model argument\
    \ may be used multiple times, if one\nwishes to (for example) optimize a parameter\
    \ independently\non several different groups of branches.\nExample:\nphyloFit\
    \ align.fa --subst-mod HKY85 \\\n--tree \"(human, (mouse#MR, rat#MR)#MR, cow)\"\
    \\\n--alt-model \"MR:kappa[0, 1]\"\nwill estimate the HKY85 parameter kappa separately\
    \ on the\nmouse/rat subtree, and constrain kappa between 0 and 1.  The\nquotes\
    \ are often necessary to prevent the square brakcets from\nbeing parsed by the\
    \ shell.  The same model could be achieved with:\nphyloFit align.fa --subst-mod\
    \ HKY85 \\\n--tree \"(human, (mouse,rat)mouse-rat, cow)\"\\\n--label-branches\
    \ mouse,rat,mouse-rat:MR \\\n--alt-model \"MR:kappa[0,1]\"\nor\nphyloFit align.fa\
    \ --subst-mod HKY85 \\\n--tree \"(human, (mouse,rat)mouse-rat, cow)\" \\\n--label-subtree\
    \ \"mouse-rat+:MR\" \\\n--alt-model \"MR:kappa[0,1]\""
  type: boolean?
  inputBinding:
    prefix: --alt-model
- id: in_post_probs
  doc: "Output posterior probabilities of all bases at all ancestral\nnodes.  Output\
    \ will be to auxiliary file(s) with suffix\n\".postprobs\"."
  type: File?
  inputBinding:
    prefix: --post-probs
- id: in_expected_subs
  doc: "Output posterior expected number of substitutions on each branch at\neach\
    \ site, summed across all types of substitutions.\nOutput will be to auxiliary\
    \ file(s) with suffix \".expsub\"."
  type: boolean?
  inputBinding:
    prefix: --expected-subs
- id: in_expected_subs_col
  doc: "Output posterior expected number of substitutions of each type\non each branch,\
    \ for each site.  Output will be to auxiliary\nfile(s) with suffix .expcolsub"
  type: boolean?
  inputBinding:
    prefix: --expected-subs-col
- id: in_expected_total_subs
  doc: "Output posterior expected number of substitutions of each type\non each branch,\
    \ summed across all sites.  Output will be to\nauxiliary file(s) with suffix \"\
    .exptotsub\"."
  type: boolean?
  inputBinding:
    prefix: --expected-total-subs
- id: in_column_probs
  doc: "(for use with -init-model; implies --lnl)  Output a separate log\nprobability\
    \ for each type of column in the input.  Output will\nbe to a file with suffix\
    \ \".colprobs\".  Values are log base 2."
  type: boolean?
  inputBinding:
    prefix: --column-probs
- id: in_windows
  doc: "<size,shift>\nApply a sliding window to the alignment, and fit a separate\n\
    tree to each window.  Arguments specify size of window and\namount by which to\
    \ shift it on each iteration, both in bases\nof the first sequence in the alignment\
    \ (assumed to be the\nreference sequence).  Separate versions of all output files\n\
    will be created for each window."
  type: boolean?
  inputBinding:
    prefix: --windows
- id: in_windows_explicit
  doc: "Like --windows, except that all start and end coordinates must\nbe explicitly\
    \ specified.  Each successive pair of numbers is\ninterpreted as defining the\
    \ start and end of a window.  Can be\nused with a two-column file and the '*'\
    \ operator, e.g.,\n--windows-explicit '*mycoords'."
  type: File?
  inputBinding:
    prefix: --windows-explicit
- id: in_frequencies_dot
  doc: They may also include information about parameters
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_post_probs
  doc: "Output posterior probabilities of all bases at all ancestral\nnodes.  Output\
    \ will be to auxiliary file(s) with suffix\n\".postprobs\"."
  type: File?
  outputBinding:
    glob: $(inputs.in_post_probs)
hints: []
cwlVersion: v1.1
baseCommand:
- phyloFit
