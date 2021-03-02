class: CommandLineTool
id: raxmlHPC_PTHREADS_AVX2.cwl
inputs:
- id: in_specify_column_name
  doc: "Specify a column weight file name to assign individual weights to each column\
    \ of\nthe alignment. Those weights must be integers separated by any type and\
    \ number\nof whitespaces whithin a separate file, see file \"example_weights\"\
    \ for an example."
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_specify_one_used
  doc: "Specify one of the secondary structure substitution models implemented in\
    \ RAxML.\nThe same nomenclature as in the PHASE manual is used, available models:\n\
    S6A, S6B, S6C, S6D, S6E, S7A, S7B, S7C, S7D, S7E, S7F, S16, S16A, S16B\nDEFAULT:\
    \ 16-state GTR model (S16)"
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_specify_seed_bootstrappingdefault
  doc: "Specify an integer number (random seed) and turn on bootstrapping\nDEFAULT:\
    \ OFF"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_specify_point_number
  doc: "specify a floating point number between 0.0 and 1.0 that will be used as cutoff\
    \ threshold\nfor the MR-based bootstopping criteria. The recommended setting is\
    \ 0.03.\nDEFAULT: 0.03 (recommended empirically determined setting)"
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_specify_number_categorized
  doc: "Specify number of distinct rate catgories for RAxML when model of rate heterogeneity\n\
    is set to CAT\nIndividual per-site rates are categorized into numberOfCategories\
    \ rate\ncategories to accelerate computations.\nDEFAULT: 25"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_enable_verbose_output
  doc: "Enable verbose output for the \"-L\" and \"-f i\" options. This will produce\
    \ more, as well as more verbose output files\nDEFAULT: OFF"
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_start_ml_optimization
  doc: "start ML optimization from random starting tree\nDEFAULT: OFF"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_ml_search_convergence
  doc: "ML search convergence criterion. This will break off ML searches if the relative\n\
    Robinson-Foulds distance between the trees obtained from two consecutive lazy\
    \ SPR cycles\nis smaller or equal to 1%. Usage recommended for very large datasets\
    \ in terms of taxa.\nOn trees with more than 500 taxa this will yield execution\
    \ time improvements of approximately 50%\nWhile yielding only slightly worse trees.\n\
    DEFAULT: OFF"
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_set_optimization_precision
  doc: "set model optimization precision in log likelihood units for final\noptimization\
    \ of tree topology\nDEFAULT: 0.1   for models not using proportion of invariant\
    \ sites estimate\n0.001 for models using proportion of invariant sites estimate"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_specify_exclude_name
  doc: "specify an exclude file name, that contains a specification of alignment positions\
    \ you wish to exclude.\nFormat is similar to Nexus, the file shall contain entries\
    \ like \"100-200 300-400\", to exclude a\nsingle column write, e.g., \"100-100\"\
    , if you use a mixed model, an appropriately adapted model file\nwill be written."
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_select_algorithm_rapid
  doc: "select algorithm:\n\"-f a\": rapid Bootstrap analysis and search for best-scoring\
    \ ML tree in one program run\n\"-f A\": compute marginal ancestral states on a\
    \ ROOTED reference tree provided with \"-t\"\n\"-f b\": draw bipartition information\
    \ on a tree provided with \"-t\" based on multiple trees\n(e.g., from a bootstrap)\
    \ in a file specified by \"-z\"\n\"-f B\": optimize br-len scaler and other model\
    \ parameters (GTR, alpha, etc.) on a tree provided with \"-t\".\nThe tree needs\
    \ to contain branch lengths. The branch lengths will not be optimized, just scaled\
    \ by a single common value.\n\"-f c\": check if the alignment can be properly\
    \ read by RAxML\n\"-f C\": ancestral sequence test for Jiajie, users will also\
    \ need to provide a list of taxon names via -Y separated by whitespaces\n\"-f\
    \ d\": new rapid hill-climbing\nDEFAULT: ON\n\"-f D\": rapid hill-climbing with\
    \ RELL bootstraps\n\"-f e\": optimize model+branch lengths for given input tree\
    \ under GAMMA/GAMMAI only\n\"-f E\": execute very fast experimental tree search,\
    \ at present only for testing\n\"-f F\": execute fast experimental tree search,\
    \ at present only for testing\n\"-f g\": compute per site log Likelihoods for\
    \ one or more trees passed via\n\"-z\" and write them to a file that can be read\
    \ by CONSEL\nThe model parameters will be estimated on the first tree only!\n\"\
    -f G\": compute per site log Likelihoods for one or more trees passed via\n\"\
    -z\" and write them to a file that can be read by CONSEL.\nThe model parameters\
    \ will be re-estimated for each tree\n\"-f h\": compute log likelihood test (SH-test)\
    \ between best tree passed via \"-t\"\nand a bunch of other trees passed via \"\
    -z\"\nThe model parameters will be estimated on the first tree only!\n\"-f H\"\
    : compute log likelihood test (SH-test) between best tree passed via \"-t\"\n\
    and a bunch of other trees passed via \"-z\"\nThe model parameters will be re-estimated\
    \ for each tree\n\"-f i\": calculate IC and TC scores (Salichos and Rokas 2013)\
    \ on a tree provided with \"-t\" based on multiple trees\n(e.g., from a bootstrap)\
    \ in a file specified by \"-z\"\n\"-f I\": a simple tree rooting algorithm for\
    \ unrooted trees.\nIt roots the tree by rooting it at the branch that best balances\
    \ the subtree lengths\n(sum over branches in the subtrees) of the left and right\
    \ subtree.\nA branch with an optimal balance does not always exist!\nYou need\
    \ to specify the tree you want to root via \"-t\".\n\"-f j\": generate a bunch\
    \ of bootstrapped alignment files from an original alignemnt file.\nYou need to\
    \ specify a seed with \"-b\" and the number of replicates with \"-#\"\n\"-f J\"\
    : Compute SH-like support values on a given tree passed via \"-t\".\n\"-f k\"\
    : Fix long branch lengths in partitioned data sets with missing data using the\n\
    branch length stealing algorithm.\nThis option only works in conjunction with\
    \ \"-t\", \"-M\", and \"-q\".\nIt will print out a tree with shorter branch lengths,\
    \ but having the same likelihood score.\n\"-f m\": compare bipartitions between\
    \ two bunches of trees passed via \"-t\" and \"-z\"\nrespectively. This will return\
    \ the Pearson correlation between all bipartitions found\nin the two tree files.\
    \ A file called RAxML_bipartitionFrequencies.outpuFileName\nwill be printed that\
    \ contains the pair-wise bipartition frequencies of the two sets\n\"-f n\": compute\
    \ the log likelihood score of all trees contained in a tree file provided by\n\
    \"-z\" under GAMMA or GAMMA+P-Invar\nThe model parameters will be estimated on\
    \ the first tree only!\n\"-f N\": compute the log likelihood score of all trees\
    \ contained in a tree file provided by\n\"-z\" under GAMMA or GAMMA+P-Invar\n\
    The model parameters will be re-estimated for each tree\n\"-f o\": old and slower\
    \ rapid hill-climbing without heuristic cutoff\n\"-f p\": perform pure stepwise\
    \ MP addition of new sequences to an incomplete starting tree and exit\n\"-f P\"\
    : perform a phylogenetic placement of sub trees specified in a file passed via\
    \ \"-z\" into a given reference tree\nin which these subtrees are contained that\
    \ is passed via \"-t\" using the evolutionary placement algorithm.\n\"-f q\":\
    \ fast quartet calculator\n\"-f r\": compute pairwise Robinson-Foulds (RF) distances\
    \ between all pairs of trees in a tree file passed via \"-z\"\nif the trees have\
    \ node labales represented as integer support values the program will also compute\
    \ two flavors of\nthe weighted Robinson-Foulds (WRF) distance\n\"-f R\": compute\
    \ all pairwise Robinson-Foulds (RF) distances between a large reference tree \
    \ passed via \"-t\"\nand many smaller trees (that must have a subset of the taxa\
    \ of the large tree) passed via \"-z\".\nThis option is intended for checking\
    \ the plausibility of very large phylogenies that can not be inspected\nvisually\
    \ any more.\n\"-f s\": split up a multi-gene partitioned alignment into the respective\
    \ subalignments\n\"-f S\": compute site-specific placement bias using a leave\
    \ one out test inspired by the evolutionary placement algorithm\n\"-f t\": do\
    \ randomized tree searches on one fixed starting tree\n\"-f T\": do final thorough\
    \ optimization of ML tree from rapid bootstrap search in stand-alone mode\n\"\
    -f u\": execute morphological weight calibration using maximum likelihood, this\
    \ will return a weight vector.\nyou need to provide a morphological alignment\
    \ and a reference tree via \"-t\"\n\"-f v\": classify a bunch of environmental\
    \ sequences into a reference tree using thorough read insertions\nyou will need\
    \ to start RAxML with a non-comprehensive reference tree and an alignment containing\
    \ all sequences (reference + query)\n\"-f V\": classify a bunch of environmental\
    \ sequences into a reference tree using thorough read insertions\nyou will need\
    \ to start RAxML with a non-comprehensive reference tree and an alignment containing\
    \ all sequences (reference + query)\nWARNING: this is a test implementation for\
    \ more efficient handling of multi-gene/whole-genome datasets!\n\"-f w\": compute\
    \ ELW test on a bunch of trees passed via \"-z\"\nThe model parameters will be\
    \ estimated on the first tree only!\n\"-f W\": compute ELW test on a bunch of\
    \ trees passed via \"-z\"\nThe model parameters will be re-estimated for each\
    \ tree\n\"-f x\": compute pair-wise ML distances, ML model parameters will be\
    \ estimated on an MP\nstarting tree or a user-defined tree passed via \"-t\",\
    \ only allowed for GAMMA-based\nmodels of rate heterogeneity\n\"-f y\": classify\
    \ a bunch of environmental sequences into a reference tree using parsimony\nyou\
    \ will need to start RAxML with a non-comprehensive reference tree and an alignment\
    \ containing all sequences (reference + query)\nDEFAULT for \"-f\": new rapid\
    \ hill climbing"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_enable_tree_searches
  doc: "enable ML tree searches under CAT model for very large trees without switching\
    \ to\nGAMMA in the end (saves memory).\nThis option can also be used with the\
    \ GAMMA models in order to avoid the thorough optimization\nof the best-scoring\
    \ ML tree in the end.\nDEFAULT: OFF"
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_specify_file_name_need
  doc: "specify the file name of a multifurcating constraint tree\nthis tree does\
    \ not need to be comprehensive, i.e. must not contain all taxa"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_enable_algorithm_heuristicsby
  doc: "enable the ML-based evolutionary placement algorithm heuristics\nby specifiyng\
    \ a threshold value (fraction of insertion branches to be evaluated\nusing slow\
    \ insertions under ML)."
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_disable_pattern_compressiondefault
  doc: "Disable pattern compression.\nDEFAULT: ON"
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_initial_rearrangement_setting
  doc: "Initial rearrangement setting for the subsequent application of topological\n\
    changes phase"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_posteriori_bootstopping_use
  doc: "a posteriori bootstopping analysis. Use:\n\"-I autoFC\" for the frequency-based\
    \ criterion\n\"-I autoMR\" for the majority-rule consensus tree criterion\n\"\
    -I autoMRE\" for the extended majority-rule consensus tree criterion\n\"-I autoMRE_IGN\"\
    \ for metrics similar to MRE, but include bipartitions under the threshold whether\
    \ they are compatible\nor not. This emulates MRE but is faster to compute.\nYou\
    \ also need to pass a tree file containg several bootstrap replicates via \"-z\""
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_specifies_files_written
  doc: "Specifies that intermediate tree files shall be written to file during the\
    \ standard ML and BS tree searches.\nDEFAULT: OFF"
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_compute_majority_rule
  doc: "Compute majority rule consensus tree with \"-J MR\" or extended majority rule\
    \ consensus tree with \"-J MRE\"\nor strict consensus tree with \"-J STRICT\"\
    . For a custom consensus threshold >= 50%, specify T_<NUM>, where 100 >= NUM >=\
    \ 50.\nOptions \"-J STRICT_DROP\" and \"-J MR_DROP\" will execute an algorithm\
    \ that identifies dropsets which contain\nrogue taxa as proposed by Pattengale\
    \ et al. in the paper \"Uncovering hidden phylogenetic consensus\".\nYou will\
    \ also need to provide a tree file containing several UNROOTED trees via \"-z\""
  type: boolean?
  inputBinding:
    prefix: -J
- id: in_specifies_bootstrapped_trees
  doc: "Specifies that bootstrapped trees should be printed with branch lengths.\n\
    The bootstraps will run a bit longer, because model parameters will be optimized\n\
    at the end of each run under GAMMA or GAMMA+P-Invar respectively.\nDEFAULT: OFF"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_specify_one_multistate
  doc: "Specify one of the multi-state substitution models (max 32 states) implemented\
    \ in RAxML.\nAvailable models are: ORDERED, MK, GTR\nDEFAULT: GTR model"
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_compute_consensus_trees
  doc: "Compute consensus trees labelled by IC supports and the overall TC value as\
    \ proposed in Salichos and Rokas 2013.\nCompute a majority rule consensus tree\
    \ with \"-L MR\" or an extended majority rule consensus tree with \"-L MRE\".\n\
    For a custom consensus threshold >= 50%, specify \"-L T_<NUM>\", where 100 >=\
    \ NUM >= 50.\nYou will of course also need to provide a tree file containing several\
    \ UNROOTED trees via \"-z\"!"
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_model_substitutionbinary_optimization
  doc: "Model of Binary (Morphological), Nucleotide, Multi-State, or Amino Acid Substitution:\n\
    BINARY:\n\"-m BINCAT[X]\"       : Optimization of site-specific\nevolutionary\
    \ rates which are categorized into numberOfCategories distinct\nrate categories\
    \ for greater computational efficiency. Final tree might be evaluated\nautomatically\
    \ under BINGAMMA, depending on the tree search option.\nWith the optional \"X\"\
    \ appendix you can specify a ML estimate of base frequencies.\n\"-m BINCATI[X]\"\
    \      : Optimization of site-specific\nevolutionary rates which are categorized\
    \ into numberOfCategories distinct\nrate categories for greater computational\
    \ efficiency. Final tree might be evaluated\nautomatically under BINGAMMAI, depending\
    \ on the tree search option.\nWith the optional \"X\" appendix you can specify\
    \ a ML estimate of base frequencies.\n\"-m ASC_BINCAT[X]\"   : Optimization of\
    \ site-specific\nevolutionary rates which are categorized into numberOfCategories\
    \ distinct\nrate categories for greater computational efficiency. Final tree might\
    \ be evaluated\nautomatically under BINGAMMA, depending on the tree search option.\n\
    With the optional \"X\" appendix you can specify a ML estimate of base frequencies.\n\
    The ASC prefix willl correct the likelihood for ascertainment bias.\n\"-m BINGAMMA[X]\"\
    \     : GAMMA model of rate heterogeneity (alpha parameter will be estimated).\n\
    With the optional \"X\" appendix you can specify a ML estimate of base frequencies.\n\
    \"-m ASC_BINGAMMA[X]\" : GAMMA model of rate heterogeneity (alpha parameter will\
    \ be estimated).\nThe ASC prefix willl correct the likelihood for ascertainment\
    \ bias.\nWith the optional \"X\" appendix you can specify a ML estimate of base\
    \ frequencies.\n\"-m BINGAMMAI[X]\"    : Same as BINGAMMA, but with estimate of\
    \ proportion of invariable sites.\nWith the optional \"X\" appendix you can specify\
    \ a ML estimate of base frequencies.\nNUCLEOTIDES:\n\"-m GTRCAT[X]\"       : GTR\
    \ + Optimization of substitution rates + Optimization of site-specific\nevolutionary\
    \ rates which are categorized into numberOfCategories distinct\nrate categories\
    \ for greater computational efficiency.  Final tree might be evaluated\nunder\
    \ GTRGAMMA, depending on the tree search option.\nWith the optional \"X\" appendix\
    \ you can specify a ML estimate of base frequencies.\n\"-m GTRCATI[X]\"      :\
    \ GTR + Optimization of substitution rates + Optimization of site-specific\nevolutionary\
    \ rates which are categorized into numberOfCategories distinct\nrate categories\
    \ for greater computational efficiency.  Final tree might be evaluated\nunder\
    \ GTRGAMMAI, depending on the tree search option.\nWith the optional \"X\" appendix\
    \ you can specify a ML estimate of base frequencies.\n\"-m ASC_GTRCAT[X]\"   :\
    \ GTR + Optimization of substitution rates + Optimization of site-specific\nevolutionary\
    \ rates which are categorized into numberOfCategories distinct\nrate categories\
    \ for greater computational efficiency.  Final tree might be evaluated\nunder\
    \ GTRGAMMA, depending on the tree search option.\nWith the optional \"X\" appendix\
    \ you can specify a ML estimate of base frequencies.\nThe ASC prefix willl correct\
    \ the likelihood for ascertainment bias.\n\"-m GTRGAMMA[X]\"     : GTR + Optimization\
    \ of substitution rates + GAMMA model of rate\nheterogeneity (alpha parameter\
    \ will be estimated).\nWith the optional \"X\" appendix you can specify a ML estimate\
    \ of base frequencies.\n\"-m ASC_GTRGAMMA[X]\" : GTR + Optimization of substitution\
    \ rates + GAMMA model of rate\nheterogeneity (alpha parameter will be estimated).\n\
    The ASC prefix willl correct the likelihood for ascertainment bias.\nWith the\
    \ optional \"X\" appendix you can specify a ML estimate of base frequencies.\n\
    \"-m GTRGAMMAI[X]\"    : Same as GTRGAMMA, but with estimate of proportion of\
    \ invariable sites.\nWith the optional \"X\" appendix you can specify a ML estimate\
    \ of base frequencies.\nMULTI-STATE:\n\"-m MULTICAT[X]\"       : Optimization\
    \ of site-specific\nevolutionary rates which are categorized into numberOfCategories\
    \ distinct\nrate categories for greater computational efficiency. Final tree might\
    \ be evaluated\nautomatically under MULTIGAMMA, depending on the tree search option.\n\
    With the optional \"X\" appendix you can specify a ML estimate of base frequencies.\n\
    \"-m MULTICATI[X]\"      : Optimization of site-specific\nevolutionary rates which\
    \ are categorized into numberOfCategories distinct\nrate categories for greater\
    \ computational efficiency. Final tree might be evaluated\nautomatically under\
    \ MULTIGAMMAI, depending on the tree search option.\nWith the optional \"X\" appendix\
    \ you can specify a ML estimate of base frequencies.\n\"-m ASC_MULTICAT[X]\" \
    \  : Optimization of site-specific\nevolutionary rates which are categorized into\
    \ numberOfCategories distinct\nrate categories for greater computational efficiency.\
    \ Final tree might be evaluated\nautomatically under MULTIGAMMA, depending on\
    \ the tree search option.\nWith the optional \"X\" appendix you can specify a\
    \ ML estimate of base frequencies.\nThe ASC prefix willl correct the likelihood\
    \ for ascertainment bias.\n\"-m MULTIGAMMA[X]\"     : GAMMA model of rate heterogeneity\
    \ (alpha parameter will be estimated).\nWith the optional \"X\" appendix you can\
    \ specify a ML estimate of base frequencies.\n\"-m ASC_MULTIGAMMA[X]\" : GAMMA\
    \ model of rate heterogeneity (alpha parameter will be estimated).\nThe ASC prefix\
    \ willl correct the likelihood for ascertainment bias.\nWith the optional \"X\"\
    \ appendix you can specify a ML estimate of base frequencies.\n\"-m MULTIGAMMAI[X]\"\
    \    : Same as MULTIGAMMA, but with estimate of proportion of invariable sites.\n\
    With the optional \"X\" appendix you can specify a ML estimate of base frequencies.\n\
    You can use up to 32 distinct character states to encode multi-state regions,\
    \ they must be used in the following order:\n0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A,\
    \ B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V\ni.e., if you\
    \ have 6 distinct character states you would use 0, 1, 2, 3, 4, 5 to encode these.\n\
    The substitution model for the multi-state regions can be selected via the \"\
    -K\" option\nAMINO ACIDS:\n\"-m PROTCATmatrixName[F|X]\"       : specified AA\
    \ matrix + Optimization of substitution rates + Optimization of site-specific\n\
    evolutionary rates which are categorized into numberOfCategories distinct\nrate\
    \ categories for greater computational efficiency.   Final tree might be evaluated\n\
    automatically under PROTGAMMAmatrixName[F|X], depending on the tree search option.\n\
    With the optional \"X\" appendix you can specify a ML estimate of base frequencies.\n\
    \"-m PROTCATImatrixName[F|X]\"      : specified AA matrix + Optimization of substitution\
    \ rates + Optimization of site-specific\nevolutionary rates which are categorized\
    \ into numberOfCategories distinct\nrate categories for greater computational\
    \ efficiency.   Final tree might be evaluated\nautomatically under PROTGAMMAImatrixName[F|X],\
    \ depending on the tree search option.\nWith the optional \"X\" appendix you can\
    \ specify a ML estimate of base frequencies.\n\"-m ASC_PROTCATmatrixName[F|X]\"\
    \   : specified AA matrix + Optimization of substitution rates + Optimization\
    \ of site-specific\nevolutionary rates which are categorized into numberOfCategories\
    \ distinct\nrate categories for greater computational efficiency.   Final tree\
    \ might be evaluated\nautomatically under PROTGAMMAmatrixName[F|X], depending\
    \ on the tree search option.\nWith the optional \"X\" appendix you can specify\
    \ a ML estimate of base frequencies.\nThe ASC prefix willl correct the likelihood\
    \ for ascertainment bias.\n\"-m PROTGAMMAmatrixName[F|X]\"     : specified AA\
    \ matrix + Optimization of substitution rates + GAMMA model of rate\nheterogeneity\
    \ (alpha parameter will be estimated).\nWith the optional \"X\" appendix you can\
    \ specify a ML estimate of base frequencies.\n\"-m ASC_PROTGAMMAmatrixName[F|X]\"\
    \ : specified AA matrix + Optimization of substitution rates + GAMMA model of\
    \ rate\nheterogeneity (alpha parameter will be estimated).\nThe ASC prefix willl\
    \ correct the likelihood for ascertainment bias.\nWith the optional \"X\" appendix\
    \ you can specify a ML estimate of base frequencies.\n\"-m PROTGAMMAImatrixName[F|X]\"\
    \    : Same as PROTGAMMAmatrixName[F|X], but with estimate of proportion of invariable\
    \ sites.\nWith the optional \"X\" appendix you can specify a ML estimate of base\
    \ frequencies.\nAvailable AA substitution models:\nDAYHOFF, DCMUT, JTT, MTREV,\
    \ WAG, RTREV, CPREV, VT,\nBLOSUM62, MTMAM, LG, MTART, MTZOA, PMB, HIVB, HIVW,\n\
    JTTDCMUT, FLU, STMTREV, DUMMY, DUMMY2, AUTO, LG4M, LG4X,\nPROT_FILE, GTR_UNLINKED,\
    \ GTR\nWith the optional \"F\" appendix you can specify if you want to use empirical\
    \ base frequencies.\nAUTOF and AUTOX are not supported any more, if you specify\
    \ AUTO it will test prot subst. models with and without empirical\nbase frequencies\
    \ now!\nPlease note that for partitioned models you can in addition specify the\
    \ per-gene AA model in\nthe partition file (see manual for details). Also note\
    \ that if you estimate AA GTR parameters on a partitioned\ndataset, they will\
    \ be linked (estimated jointly) across all partitions to avoid over-parametrization"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_switch_only_has
  doc: "Switch on estimation of individual per-partition branch lengths. Only has\
    \ effect when used in combination with \"-q\"\nBranch lengths for individual partitions\
    \ will be printed to separate files\nA weighted average of the branch lengths\
    \ is computed by using the respective partition lengths\nDEFAULT: OFF"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_specifies_name_output
  doc: Specifies the name of the output file.
  type: File?
  inputBinding:
    prefix: -n
- id: in_specify_name_single
  doc: "Specify the name of a single outgroup or a comma-separated list of outgroups,\
    \ eg \"-o Rat\"\nor \"-o Rat,Mouse\", in case that multiple outgroups are not\
    \ monophyletic the first name\nin the list will be selected as outgroup, don't\
    \ leave spaces between taxon names!"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_disable_check_completely
  doc: "Disable check for completely undetermined sequence in alignment.\nThe program\
    \ will not exit with an error message when \"-O\" is specified.\nDEFAULT: check\
    \ enabled"
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_specify_random_seed
  doc: "Specify a random number seed for the parsimony inferences. This allows you\
    \ to reproduce your results\nand will help me debug the program."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_specify_name_userdefined
  doc: "Specify the file name of a user-defined AA (Protein) substitution model. This\
    \ file must contain\n420 entries, the first 400 being the AA substitution rates\
    \ (this must be a symmetric matrix) and the\nlast 20 are the empirical base frequencies"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_specify_file_name_contains
  doc: "Specify the file name which contains the assignment of models to alignment\n\
    partitions for multiple models of substitution. For the syntax of this file\n\
    please consult the manual."
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_binary_binary_constraint
  doc: "Specify the file name of a binary constraint tree.\nthis tree does not need\
    \ to be comprehensive, i.e. must not contain all taxa"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_specify_binary_model
  doc: "Specify the file name of a binary model parameter file that has previously\
    \ been generated\nwith RAxML using the -f e tree evaluation option. The file name\
    \ should be:\nRAxML_binaryModelParameters.runID"
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_specify_name_alignment
  doc: Specify the name of the alignment data file in PHYLIP format
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_specify_name_secondary
  doc: "Specify the name of a secondary structure file. The file can contain \".\"\
    \ for\nalignment columns that do not form part of a stem and characters \"()<>[]{}\"\
    \ to define\nstem regions and pseudoknots"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_specify_user_starting
  doc: Specify a user starting tree file name in Newick format
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_pthreads_version_only
  doc: "PTHREADS VERSION ONLY! Specify the number of threads you want to run.\nMake\
    \ sure to set \"-T\" to at most the number of CPUs you have on your machine,\n\
    otherwise, there will be a huge performance decrease!"
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_use_median_off
  doc: "use the median for the discrete approximation of the GAMMA model of rate heterogeneity\n\
    DEFAULT: OFF"
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_try_save_memory
  doc: "Try to save memory by using SEV-based implementation for gap columns on large\
    \ gappy alignments\nThe technique is described here: http://www.biomedcentral.com/1471-2105/12/470\n\
    This will only work for DNA and/or PROTEIN data and only with the SSE3 or AVX-vextorized\
    \ version of the code."
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_display_version_information
  doc: Display version information
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_disable_rate_heterogeneity
  doc: "Disable rate heterogeneity among sites model and use one without rate heterogeneity\
    \ instead.\nOnly works if you specify the CAT model of rate heterogeneity.\nDEFAULT:\
    \ use rate heterogeneity"
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_full_path_directory
  doc: "FULL (!) path to the directory into which RAxML shall write its output files\n\
    DEFAULT: current directory"
  type: File?
  inputBinding:
    prefix: -w
- id: in_sliding_window_size
  doc: "Sliding window size for leave-one-out site-specific placement bias algorithm\n\
    only effective when used in combination with \"-f S\"\nDEFAULT: 100 sites"
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_specify_seed_rapid
  doc: "Specify an integer number (random seed) and turn on rapid bootstrapping\n\
    CAUTION: unlike in version 7.0.4 RAxML will conduct rapid BS replicates under\n\
    the model of rate heterogeneity you specified via \"-m\" and not by default under\
    \ CAT"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_same_option_however
  doc: "Same as the \"-y\" option below, however the parsimony search is more superficial.\n\
    RAxML will only do a randomized stepwise addition order parsimony tree reconstruction\n\
    without performing any additional SPRs.\nThis may be helpful for very broad whole-genome\
    \ datasets, since this can generate topologically\nmore different starting trees.\n\
    DEFAULT: OFF"
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_you_want_compute
  doc: "If you want to only compute a parsimony starting tree with RAxML specify \"\
    -y\",\nthe program will exit after computation of the starting tree\nDEFAULT:\
    \ OFF"
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_pass_quartet_grouping
  doc: "Pass a quartet grouping file name defining four groups from which to draw\
    \ quartets\nThe file input format must contain 4 groups in the following form:\n\
    (Chicken, Human, Loach), (Cow, Carp), (Mouse, Rat, Seal), (Whale, Frog);\nOnly\
    \ works in combination with -f q !"
  type: boolean?
  inputBinding:
    prefix: -Y
- id: in_file_containing_trees
  doc: "Specify the file name of a file containing multiple trees e.g. from a bootstrap\n\
    that shall be used to draw bipartition values onto a tree provided with \"-t\"\
    ,\nIt can also be used to compute per site log likelihoods in combination with\
    \ \"-f g\"\nand to read a bunch of trees for a couple of other options (\"-f h\"\
    , \"-f m\", \"-f n\")."
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_mesquite
  doc: "output files that can be parsed by Mesquite.\nDEFAULT: Off"
  type: string?
  inputBinding:
    prefix: --mesquite
- id: in_silent
  doc: "printout of warnings related to identical sequences and entirely undetermined\
    \ sites in the alignment\nDEFAULT: Off"
  type: string?
  inputBinding:
    prefix: --silent
- id: in_no_seq_check
  doc: "checking the input MSA for identical sequences and entirely undetermined sites.\n\
    Enabling this option may save time, in particular for large phylogenomic alignments.\n\
    Before using this, make sure to check the alignment using the \"-f c\" option!\n\
    DEFAULT: Off"
  type: string?
  inputBinding:
    prefix: --no-seq-check
- id: in_no_bfgs
  doc: "automatic usage of BFGS method to optimize GTR rates on unpartitioned DNA\
    \ datasets\nDEFAULT: BFGS on"
  type: string?
  inputBinding:
    prefix: --no-bfgs
- id: in_asc_corr
  doc: "to specify the type of ascertainment bias correction you wish to use. There\
    \ are 3\ntypes available:\n--asc-corr=lewis: the standard correction by Paul Lewis\n\
    --asc-corr=felsenstein: a correction introduced by Joe Felsenstein that allows\
    \ to explicitely specify\nthe number of invariable sites (if known) one wants\
    \ to correct for.\n--asc-corr=stamatakis: a correction introduced by myself that\
    \ allows to explicitely specify\nthe number of invariable sites for each character\
    \ (if known) one wants to correct for."
  type: long?
  inputBinding:
    prefix: --asc-corr
- id: in_flag_check
  doc: "using this option, RAxML will only check if all command line flags specifed\
    \ are available and then exit\nwith a message listing all invalid command line\
    \ flags or with a message stating that all flags are valid."
  type: string?
  inputBinding:
    prefix: --flag-check
- id: in_auto_prot
  doc: "|bic|aic|aicc When using automatic protein model selection you can chose the\
    \ criterion for selecting these models.\nRAxML will test all available prot subst.\
    \ models except for LG4M, LG4X and GTR-based models, with and without empirical\
    \ base frequencies.\nYou can chose between ML score based selection and the BIC,\
    \ AIC, and AICc criteria.\nDEFAULT: ml"
  type: long?
  inputBinding:
    prefix: --auto-prot
- id: in_epa_keep_placements
  doc: "specify the number of potential placements you want to keep for each read\
    \ in the EPA algorithm.\nNote that, the actual values printed will also depend\
    \ on the settings for --epa-prob-threshold=threshold !\nDEFAULT: 7"
  type: long?
  inputBinding:
    prefix: --epa-keep-placements
- id: in_epa_prob_threshold
  doc: "specify a percent threshold for including potential placements of a read depending\
    \ on the\nmaximum placement weight for this read. If you set this value to 0.01\
    \ placements that have a placement weight of 1 per cent of\nthe maximum placement\
    \ will still be printed to file if the setting of --epa-keep-placements allows\
    \ for it\nDEFAULT: 0.01"
  type: File?
  inputBinding:
    prefix: --epa-prob-threshold
- id: in_epa_accumulated_threshold
  doc: "specify an accumulated likelihood weight threshold for which different placements\
    \ of read are printed\nto file. Placements for a read will be printed until the\
    \ sum of their placement weights has reached the threshold value.\nNote that,\
    \ this option can neither be used in combination with --epa-prob-threshold nor\
    \ with --epa-keep-placements!"
  type: File?
  inputBinding:
    prefix: --epa-accumulated-threshold
- id: in_jc_six_nine
  doc: "that all DNA partitions will evolve under the Jukes-Cantor model, this overrides\
    \ all other model specifications for DNA partitions.\nDEFAULT: Off"
  type: long?
  inputBinding:
    prefix: --JC69
- id: in_k_eight_zero
  doc: "that all DNA partitions will evolve under the K80 model, this overrides all\
    \ other model specifications for DNA partitions.\nDEFAULT: Off"
  type: long?
  inputBinding:
    prefix: --K80
- id: in_hky_eight_five
  doc: "that all DNA partitions will evolve under the HKY85 model, this overrides\
    \ all other model specifications for DNA partitions.\nDEFAULT: Off"
  type: long?
  inputBinding:
    prefix: --HKY85
- id: in_boots_top_perms
  doc: "specify the number of permutations to be conducted for the bootstopping/bootstrap\
    \ convergence test.\nThe allowed minimum number is 100!\nDEFAULT: 100"
  type: long?
  inputBinding:
    prefix: --bootstop-perms
- id: in_quartets_without_replacement
  doc: "that quartets are randomly subsampled, but without replacement.\nDEFAULT:\
    \ random sampling with replacements"
  type: string?
  inputBinding:
    prefix: --quartets-without-replacement
- id: in_print_identical_sequences
  doc: "that RAxML shall automatically generate a .reduced alignment with all\nundetermined\
    \ columns removed, but without removing exactly identical sequences\nDEFAULT:\
    \ identical sequences will also be removed in the .reduced file\n"
  type: File?
  inputBinding:
    prefix: --print-identical-sequences
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specifies_name_output
  doc: Specifies the name of the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_specifies_name_output)
- id: out_full_path_directory
  doc: "FULL (!) path to the directory into which RAxML shall write its output files\n\
    DEFAULT: current directory"
  type: File?
  outputBinding:
    glob: $(inputs.in_full_path_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- raxmlHPC-PTHREADS-AVX2
