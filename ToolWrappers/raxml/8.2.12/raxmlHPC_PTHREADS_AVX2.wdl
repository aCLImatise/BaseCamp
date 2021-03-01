version 1.0

task RaxmlHPCPTHREADSAVX2 {
  input {
    Boolean? specify_column_name
    Boolean? specify_one_used
    Boolean? specify_seed_bootstrappingdefault
    Boolean? specify_point_number
    Boolean? specify_number_categorized
    Boolean? enable_verbose_output
    Boolean? start_ml_optimization
    Boolean? ml_search_convergence
    Boolean? set_optimization_precision
    Boolean? specify_exclude_name
    Boolean? select_algorithm_rapid
    Boolean? enable_tree_searches
    Boolean? specify_file_name_need
    Boolean? enable_algorithm_heuristicsby
    Boolean? disable_pattern_compressiondefault
    Boolean? initial_rearrangement_setting
    Boolean? posteriori_bootstopping_use
    Boolean? specifies_files_written
    Boolean? compute_majority_rule
    Boolean? specifies_bootstrapped_trees
    Boolean? specify_one_multistate
    Boolean? compute_consensus_trees
    Boolean? model_substitutionbinary_optimization
    Boolean? switch_only_has
    File? specifies_name_output
    Boolean? specify_name_single
    Boolean? disable_check_completely
    Boolean? specify_random_seed
    Boolean? specify_name_userdefined
    Boolean? specify_file_name_contains
    Boolean? binary_binary_constraint
    Boolean? specify_binary_model
    Boolean? specify_name_alignment
    Boolean? specify_name_secondary
    Boolean? specify_user_starting
    Boolean? pthreads_version_only
    Boolean? use_median_off
    Boolean? try_save_memory
    Boolean? display_version_information
    Boolean? disable_rate_heterogeneity
    File? full_path_directory
    Boolean? sliding_window_size
    Boolean? specify_seed_rapid
    Boolean? same_option_however
    Boolean? you_want_compute
    Boolean? pass_quartet_grouping
    Boolean? file_containing_trees
    String? mesquite
    String? silent
    String? no_seq_check
    String? no_bfgs
    Int? asc_corr
    String? flag_check
    Int? auto_prot
    Int? epa_keep_placements
    File? epa_prob_threshold
    File? epa_accumulated_threshold
    Int? jc_six_nine
    Int? k_eight_zero
    Int? hky_eight_five
    Int? boots_top_perms
    String? quartets_without_replacement
    File? print_identical_sequences
  }
  command <<<
    raxmlHPC_PTHREADS_AVX2 \
      ~{if (specify_column_name) then "-a" else ""} \
      ~{if (specify_one_used) then "-A" else ""} \
      ~{if (specify_seed_bootstrappingdefault) then "-b" else ""} \
      ~{if (specify_point_number) then "-B" else ""} \
      ~{if (specify_number_categorized) then "-c" else ""} \
      ~{if (enable_verbose_output) then "-C" else ""} \
      ~{if (start_ml_optimization) then "-d" else ""} \
      ~{if (ml_search_convergence) then "-D" else ""} \
      ~{if (set_optimization_precision) then "-e" else ""} \
      ~{if (specify_exclude_name) then "-E" else ""} \
      ~{if (select_algorithm_rapid) then "-f" else ""} \
      ~{if (enable_tree_searches) then "-F" else ""} \
      ~{if (specify_file_name_need) then "-g" else ""} \
      ~{if (enable_algorithm_heuristicsby) then "-G" else ""} \
      ~{if (disable_pattern_compressiondefault) then "-H" else ""} \
      ~{if (initial_rearrangement_setting) then "-i" else ""} \
      ~{if (posteriori_bootstopping_use) then "-I" else ""} \
      ~{if (specifies_files_written) then "-j" else ""} \
      ~{if (compute_majority_rule) then "-J" else ""} \
      ~{if (specifies_bootstrapped_trees) then "-k" else ""} \
      ~{if (specify_one_multistate) then "-K" else ""} \
      ~{if (compute_consensus_trees) then "-L" else ""} \
      ~{if (model_substitutionbinary_optimization) then "-m" else ""} \
      ~{if (switch_only_has) then "-M" else ""} \
      ~{if (specifies_name_output) then "-n" else ""} \
      ~{if (specify_name_single) then "-o" else ""} \
      ~{if (disable_check_completely) then "-O" else ""} \
      ~{if (specify_random_seed) then "-p" else ""} \
      ~{if (specify_name_userdefined) then "-P" else ""} \
      ~{if (specify_file_name_contains) then "-q" else ""} \
      ~{if (binary_binary_constraint) then "-r" else ""} \
      ~{if (specify_binary_model) then "-R" else ""} \
      ~{if (specify_name_alignment) then "-s" else ""} \
      ~{if (specify_name_secondary) then "-S" else ""} \
      ~{if (specify_user_starting) then "-t" else ""} \
      ~{if (pthreads_version_only) then "-T" else ""} \
      ~{if (use_median_off) then "-u" else ""} \
      ~{if (try_save_memory) then "-U" else ""} \
      ~{if (display_version_information) then "-v" else ""} \
      ~{if (disable_rate_heterogeneity) then "-V" else ""} \
      ~{if (full_path_directory) then "-w" else ""} \
      ~{if (sliding_window_size) then "-W" else ""} \
      ~{if (specify_seed_rapid) then "-x" else ""} \
      ~{if (same_option_however) then "-X" else ""} \
      ~{if (you_want_compute) then "-y" else ""} \
      ~{if (pass_quartet_grouping) then "-Y" else ""} \
      ~{if (file_containing_trees) then "-z" else ""} \
      ~{if defined(mesquite) then ("--mesquite " +  '"' + mesquite + '"') else ""} \
      ~{if defined(silent) then ("--silent " +  '"' + silent + '"') else ""} \
      ~{if defined(no_seq_check) then ("--no-seq-check " +  '"' + no_seq_check + '"') else ""} \
      ~{if defined(no_bfgs) then ("--no-bfgs " +  '"' + no_bfgs + '"') else ""} \
      ~{if defined(asc_corr) then ("--asc-corr " +  '"' + asc_corr + '"') else ""} \
      ~{if defined(flag_check) then ("--flag-check " +  '"' + flag_check + '"') else ""} \
      ~{if defined(auto_prot) then ("--auto-prot " +  '"' + auto_prot + '"') else ""} \
      ~{if defined(epa_keep_placements) then ("--epa-keep-placements " +  '"' + epa_keep_placements + '"') else ""} \
      ~{if defined(epa_prob_threshold) then ("--epa-prob-threshold " +  '"' + epa_prob_threshold + '"') else ""} \
      ~{if defined(epa_accumulated_threshold) then ("--epa-accumulated-threshold " +  '"' + epa_accumulated_threshold + '"') else ""} \
      ~{if defined(jc_six_nine) then ("--JC69 " +  '"' + jc_six_nine + '"') else ""} \
      ~{if defined(k_eight_zero) then ("--K80 " +  '"' + k_eight_zero + '"') else ""} \
      ~{if defined(hky_eight_five) then ("--HKY85 " +  '"' + hky_eight_five + '"') else ""} \
      ~{if defined(boots_top_perms) then ("--bootstop-perms " +  '"' + boots_top_perms + '"') else ""} \
      ~{if defined(quartets_without_replacement) then ("--quartets-without-replacement " +  '"' + quartets_without_replacement + '"') else ""} \
      ~{if defined(print_identical_sequences) then ("--print-identical-sequences " +  '"' + print_identical_sequences + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_column_name: "Specify a column weight file name to assign individual weights to each column of\\nthe alignment. Those weights must be integers separated by any type and number\\nof whitespaces whithin a separate file, see file \\\"example_weights\\\" for an example."
    specify_one_used: "Specify one of the secondary structure substitution models implemented in RAxML.\\nThe same nomenclature as in the PHASE manual is used, available models:\\nS6A, S6B, S6C, S6D, S6E, S7A, S7B, S7C, S7D, S7E, S7F, S16, S16A, S16B\\nDEFAULT: 16-state GTR model (S16)"
    specify_seed_bootstrappingdefault: "Specify an integer number (random seed) and turn on bootstrapping\\nDEFAULT: OFF"
    specify_point_number: "specify a floating point number between 0.0 and 1.0 that will be used as cutoff threshold\\nfor the MR-based bootstopping criteria. The recommended setting is 0.03.\\nDEFAULT: 0.03 (recommended empirically determined setting)"
    specify_number_categorized: "Specify number of distinct rate catgories for RAxML when model of rate heterogeneity\\nis set to CAT\\nIndividual per-site rates are categorized into numberOfCategories rate\\ncategories to accelerate computations.\\nDEFAULT: 25"
    enable_verbose_output: "Enable verbose output for the \\\"-L\\\" and \\\"-f i\\\" options. This will produce more, as well as more verbose output files\\nDEFAULT: OFF"
    start_ml_optimization: "start ML optimization from random starting tree\\nDEFAULT: OFF"
    ml_search_convergence: "ML search convergence criterion. This will break off ML searches if the relative\\nRobinson-Foulds distance between the trees obtained from two consecutive lazy SPR cycles\\nis smaller or equal to 1%. Usage recommended for very large datasets in terms of taxa.\\nOn trees with more than 500 taxa this will yield execution time improvements of approximately 50%\\nWhile yielding only slightly worse trees.\\nDEFAULT: OFF"
    set_optimization_precision: "set model optimization precision in log likelihood units for final\\noptimization of tree topology\\nDEFAULT: 0.1   for models not using proportion of invariant sites estimate\\n0.001 for models using proportion of invariant sites estimate"
    specify_exclude_name: "specify an exclude file name, that contains a specification of alignment positions you wish to exclude.\\nFormat is similar to Nexus, the file shall contain entries like \\\"100-200 300-400\\\", to exclude a\\nsingle column write, e.g., \\\"100-100\\\", if you use a mixed model, an appropriately adapted model file\\nwill be written."
    select_algorithm_rapid: "select algorithm:\\n\\\"-f a\\\": rapid Bootstrap analysis and search for best-scoring ML tree in one program run\\n\\\"-f A\\\": compute marginal ancestral states on a ROOTED reference tree provided with \\\"-t\\\"\\n\\\"-f b\\\": draw bipartition information on a tree provided with \\\"-t\\\" based on multiple trees\\n(e.g., from a bootstrap) in a file specified by \\\"-z\\\"\\n\\\"-f B\\\": optimize br-len scaler and other model parameters (GTR, alpha, etc.) on a tree provided with \\\"-t\\\".\\nThe tree needs to contain branch lengths. The branch lengths will not be optimized, just scaled by a single common value.\\n\\\"-f c\\\": check if the alignment can be properly read by RAxML\\n\\\"-f C\\\": ancestral sequence test for Jiajie, users will also need to provide a list of taxon names via -Y separated by whitespaces\\n\\\"-f d\\\": new rapid hill-climbing\\nDEFAULT: ON\\n\\\"-f D\\\": rapid hill-climbing with RELL bootstraps\\n\\\"-f e\\\": optimize model+branch lengths for given input tree under GAMMA/GAMMAI only\\n\\\"-f E\\\": execute very fast experimental tree search, at present only for testing\\n\\\"-f F\\\": execute fast experimental tree search, at present only for testing\\n\\\"-f g\\\": compute per site log Likelihoods for one or more trees passed via\\n\\\"-z\\\" and write them to a file that can be read by CONSEL\\nThe model parameters will be estimated on the first tree only!\\n\\\"-f G\\\": compute per site log Likelihoods for one or more trees passed via\\n\\\"-z\\\" and write them to a file that can be read by CONSEL.\\nThe model parameters will be re-estimated for each tree\\n\\\"-f h\\\": compute log likelihood test (SH-test) between best tree passed via \\\"-t\\\"\\nand a bunch of other trees passed via \\\"-z\\\"\\nThe model parameters will be estimated on the first tree only!\\n\\\"-f H\\\": compute log likelihood test (SH-test) between best tree passed via \\\"-t\\\"\\nand a bunch of other trees passed via \\\"-z\\\"\\nThe model parameters will be re-estimated for each tree\\n\\\"-f i\\\": calculate IC and TC scores (Salichos and Rokas 2013) on a tree provided with \\\"-t\\\" based on multiple trees\\n(e.g., from a bootstrap) in a file specified by \\\"-z\\\"\\n\\\"-f I\\\": a simple tree rooting algorithm for unrooted trees.\\nIt roots the tree by rooting it at the branch that best balances the subtree lengths\\n(sum over branches in the subtrees) of the left and right subtree.\\nA branch with an optimal balance does not always exist!\\nYou need to specify the tree you want to root via \\\"-t\\\".\\n\\\"-f j\\\": generate a bunch of bootstrapped alignment files from an original alignemnt file.\\nYou need to specify a seed with \\\"-b\\\" and the number of replicates with \\\"-#\\\"\\n\\\"-f J\\\": Compute SH-like support values on a given tree passed via \\\"-t\\\".\\n\\\"-f k\\\": Fix long branch lengths in partitioned data sets with missing data using the\\nbranch length stealing algorithm.\\nThis option only works in conjunction with \\\"-t\\\", \\\"-M\\\", and \\\"-q\\\".\\nIt will print out a tree with shorter branch lengths, but having the same likelihood score.\\n\\\"-f m\\\": compare bipartitions between two bunches of trees passed via \\\"-t\\\" and \\\"-z\\\"\\nrespectively. This will return the Pearson correlation between all bipartitions found\\nin the two tree files. A file called RAxML_bipartitionFrequencies.outpuFileName\\nwill be printed that contains the pair-wise bipartition frequencies of the two sets\\n\\\"-f n\\\": compute the log likelihood score of all trees contained in a tree file provided by\\n\\\"-z\\\" under GAMMA or GAMMA+P-Invar\\nThe model parameters will be estimated on the first tree only!\\n\\\"-f N\\\": compute the log likelihood score of all trees contained in a tree file provided by\\n\\\"-z\\\" under GAMMA or GAMMA+P-Invar\\nThe model parameters will be re-estimated for each tree\\n\\\"-f o\\\": old and slower rapid hill-climbing without heuristic cutoff\\n\\\"-f p\\\": perform pure stepwise MP addition of new sequences to an incomplete starting tree and exit\\n\\\"-f P\\\": perform a phylogenetic placement of sub trees specified in a file passed via \\\"-z\\\" into a given reference tree\\nin which these subtrees are contained that is passed via \\\"-t\\\" using the evolutionary placement algorithm.\\n\\\"-f q\\\": fast quartet calculator\\n\\\"-f r\\\": compute pairwise Robinson-Foulds (RF) distances between all pairs of trees in a tree file passed via \\\"-z\\\"\\nif the trees have node labales represented as integer support values the program will also compute two flavors of\\nthe weighted Robinson-Foulds (WRF) distance\\n\\\"-f R\\\": compute all pairwise Robinson-Foulds (RF) distances between a large reference tree  passed via \\\"-t\\\"\\nand many smaller trees (that must have a subset of the taxa of the large tree) passed via \\\"-z\\\".\\nThis option is intended for checking the plausibility of very large phylogenies that can not be inspected\\nvisually any more.\\n\\\"-f s\\\": split up a multi-gene partitioned alignment into the respective subalignments\\n\\\"-f S\\\": compute site-specific placement bias using a leave one out test inspired by the evolutionary placement algorithm\\n\\\"-f t\\\": do randomized tree searches on one fixed starting tree\\n\\\"-f T\\\": do final thorough optimization of ML tree from rapid bootstrap search in stand-alone mode\\n\\\"-f u\\\": execute morphological weight calibration using maximum likelihood, this will return a weight vector.\\nyou need to provide a morphological alignment and a reference tree via \\\"-t\\\"\\n\\\"-f v\\\": classify a bunch of environmental sequences into a reference tree using thorough read insertions\\nyou will need to start RAxML with a non-comprehensive reference tree and an alignment containing all sequences (reference + query)\\n\\\"-f V\\\": classify a bunch of environmental sequences into a reference tree using thorough read insertions\\nyou will need to start RAxML with a non-comprehensive reference tree and an alignment containing all sequences (reference + query)\\nWARNING: this is a test implementation for more efficient handling of multi-gene/whole-genome datasets!\\n\\\"-f w\\\": compute ELW test on a bunch of trees passed via \\\"-z\\\"\\nThe model parameters will be estimated on the first tree only!\\n\\\"-f W\\\": compute ELW test on a bunch of trees passed via \\\"-z\\\"\\nThe model parameters will be re-estimated for each tree\\n\\\"-f x\\\": compute pair-wise ML distances, ML model parameters will be estimated on an MP\\nstarting tree or a user-defined tree passed via \\\"-t\\\", only allowed for GAMMA-based\\nmodels of rate heterogeneity\\n\\\"-f y\\\": classify a bunch of environmental sequences into a reference tree using parsimony\\nyou will need to start RAxML with a non-comprehensive reference tree and an alignment containing all sequences (reference + query)\\nDEFAULT for \\\"-f\\\": new rapid hill climbing"
    enable_tree_searches: "enable ML tree searches under CAT model for very large trees without switching to\\nGAMMA in the end (saves memory).\\nThis option can also be used with the GAMMA models in order to avoid the thorough optimization\\nof the best-scoring ML tree in the end.\\nDEFAULT: OFF"
    specify_file_name_need: "specify the file name of a multifurcating constraint tree\\nthis tree does not need to be comprehensive, i.e. must not contain all taxa"
    enable_algorithm_heuristicsby: "enable the ML-based evolutionary placement algorithm heuristics\\nby specifiyng a threshold value (fraction of insertion branches to be evaluated\\nusing slow insertions under ML)."
    disable_pattern_compressiondefault: "Disable pattern compression.\\nDEFAULT: ON"
    initial_rearrangement_setting: "Initial rearrangement setting for the subsequent application of topological\\nchanges phase"
    posteriori_bootstopping_use: "a posteriori bootstopping analysis. Use:\\n\\\"-I autoFC\\\" for the frequency-based criterion\\n\\\"-I autoMR\\\" for the majority-rule consensus tree criterion\\n\\\"-I autoMRE\\\" for the extended majority-rule consensus tree criterion\\n\\\"-I autoMRE_IGN\\\" for metrics similar to MRE, but include bipartitions under the threshold whether they are compatible\\nor not. This emulates MRE but is faster to compute.\\nYou also need to pass a tree file containg several bootstrap replicates via \\\"-z\\\""
    specifies_files_written: "Specifies that intermediate tree files shall be written to file during the standard ML and BS tree searches.\\nDEFAULT: OFF"
    compute_majority_rule: "Compute majority rule consensus tree with \\\"-J MR\\\" or extended majority rule consensus tree with \\\"-J MRE\\\"\\nor strict consensus tree with \\\"-J STRICT\\\". For a custom consensus threshold >= 50%, specify T_<NUM>, where 100 >= NUM >= 50.\\nOptions \\\"-J STRICT_DROP\\\" and \\\"-J MR_DROP\\\" will execute an algorithm that identifies dropsets which contain\\nrogue taxa as proposed by Pattengale et al. in the paper \\\"Uncovering hidden phylogenetic consensus\\\".\\nYou will also need to provide a tree file containing several UNROOTED trees via \\\"-z\\\""
    specifies_bootstrapped_trees: "Specifies that bootstrapped trees should be printed with branch lengths.\\nThe bootstraps will run a bit longer, because model parameters will be optimized\\nat the end of each run under GAMMA or GAMMA+P-Invar respectively.\\nDEFAULT: OFF"
    specify_one_multistate: "Specify one of the multi-state substitution models (max 32 states) implemented in RAxML.\\nAvailable models are: ORDERED, MK, GTR\\nDEFAULT: GTR model"
    compute_consensus_trees: "Compute consensus trees labelled by IC supports and the overall TC value as proposed in Salichos and Rokas 2013.\\nCompute a majority rule consensus tree with \\\"-L MR\\\" or an extended majority rule consensus tree with \\\"-L MRE\\\".\\nFor a custom consensus threshold >= 50%, specify \\\"-L T_<NUM>\\\", where 100 >= NUM >= 50.\\nYou will of course also need to provide a tree file containing several UNROOTED trees via \\\"-z\\\"!"
    model_substitutionbinary_optimization: "Model of Binary (Morphological), Nucleotide, Multi-State, or Amino Acid Substitution:\\nBINARY:\\n\\\"-m BINCAT[X]\\\"       : Optimization of site-specific\\nevolutionary rates which are categorized into numberOfCategories distinct\\nrate categories for greater computational efficiency. Final tree might be evaluated\\nautomatically under BINGAMMA, depending on the tree search option.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m BINCATI[X]\\\"      : Optimization of site-specific\\nevolutionary rates which are categorized into numberOfCategories distinct\\nrate categories for greater computational efficiency. Final tree might be evaluated\\nautomatically under BINGAMMAI, depending on the tree search option.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m ASC_BINCAT[X]\\\"   : Optimization of site-specific\\nevolutionary rates which are categorized into numberOfCategories distinct\\nrate categories for greater computational efficiency. Final tree might be evaluated\\nautomatically under BINGAMMA, depending on the tree search option.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\nThe ASC prefix willl correct the likelihood for ascertainment bias.\\n\\\"-m BINGAMMA[X]\\\"     : GAMMA model of rate heterogeneity (alpha parameter will be estimated).\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m ASC_BINGAMMA[X]\\\" : GAMMA model of rate heterogeneity (alpha parameter will be estimated).\\nThe ASC prefix willl correct the likelihood for ascertainment bias.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m BINGAMMAI[X]\\\"    : Same as BINGAMMA, but with estimate of proportion of invariable sites.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\nNUCLEOTIDES:\\n\\\"-m GTRCAT[X]\\\"       : GTR + Optimization of substitution rates + Optimization of site-specific\\nevolutionary rates which are categorized into numberOfCategories distinct\\nrate categories for greater computational efficiency.  Final tree might be evaluated\\nunder GTRGAMMA, depending on the tree search option.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m GTRCATI[X]\\\"      : GTR + Optimization of substitution rates + Optimization of site-specific\\nevolutionary rates which are categorized into numberOfCategories distinct\\nrate categories for greater computational efficiency.  Final tree might be evaluated\\nunder GTRGAMMAI, depending on the tree search option.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m ASC_GTRCAT[X]\\\"   : GTR + Optimization of substitution rates + Optimization of site-specific\\nevolutionary rates which are categorized into numberOfCategories distinct\\nrate categories for greater computational efficiency.  Final tree might be evaluated\\nunder GTRGAMMA, depending on the tree search option.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\nThe ASC prefix willl correct the likelihood for ascertainment bias.\\n\\\"-m GTRGAMMA[X]\\\"     : GTR + Optimization of substitution rates + GAMMA model of rate\\nheterogeneity (alpha parameter will be estimated).\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m ASC_GTRGAMMA[X]\\\" : GTR + Optimization of substitution rates + GAMMA model of rate\\nheterogeneity (alpha parameter will be estimated).\\nThe ASC prefix willl correct the likelihood for ascertainment bias.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m GTRGAMMAI[X]\\\"    : Same as GTRGAMMA, but with estimate of proportion of invariable sites.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\nMULTI-STATE:\\n\\\"-m MULTICAT[X]\\\"       : Optimization of site-specific\\nevolutionary rates which are categorized into numberOfCategories distinct\\nrate categories for greater computational efficiency. Final tree might be evaluated\\nautomatically under MULTIGAMMA, depending on the tree search option.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m MULTICATI[X]\\\"      : Optimization of site-specific\\nevolutionary rates which are categorized into numberOfCategories distinct\\nrate categories for greater computational efficiency. Final tree might be evaluated\\nautomatically under MULTIGAMMAI, depending on the tree search option.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m ASC_MULTICAT[X]\\\"   : Optimization of site-specific\\nevolutionary rates which are categorized into numberOfCategories distinct\\nrate categories for greater computational efficiency. Final tree might be evaluated\\nautomatically under MULTIGAMMA, depending on the tree search option.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\nThe ASC prefix willl correct the likelihood for ascertainment bias.\\n\\\"-m MULTIGAMMA[X]\\\"     : GAMMA model of rate heterogeneity (alpha parameter will be estimated).\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m ASC_MULTIGAMMA[X]\\\" : GAMMA model of rate heterogeneity (alpha parameter will be estimated).\\nThe ASC prefix willl correct the likelihood for ascertainment bias.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m MULTIGAMMAI[X]\\\"    : Same as MULTIGAMMA, but with estimate of proportion of invariable sites.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\nYou can use up to 32 distinct character states to encode multi-state regions, they must be used in the following order:\\n0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V\\ni.e., if you have 6 distinct character states you would use 0, 1, 2, 3, 4, 5 to encode these.\\nThe substitution model for the multi-state regions can be selected via the \\\"-K\\\" option\\nAMINO ACIDS:\\n\\\"-m PROTCATmatrixName[F|X]\\\"       : specified AA matrix + Optimization of substitution rates + Optimization of site-specific\\nevolutionary rates which are categorized into numberOfCategories distinct\\nrate categories for greater computational efficiency.   Final tree might be evaluated\\nautomatically under PROTGAMMAmatrixName[F|X], depending on the tree search option.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m PROTCATImatrixName[F|X]\\\"      : specified AA matrix + Optimization of substitution rates + Optimization of site-specific\\nevolutionary rates which are categorized into numberOfCategories distinct\\nrate categories for greater computational efficiency.   Final tree might be evaluated\\nautomatically under PROTGAMMAImatrixName[F|X], depending on the tree search option.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m ASC_PROTCATmatrixName[F|X]\\\"   : specified AA matrix + Optimization of substitution rates + Optimization of site-specific\\nevolutionary rates which are categorized into numberOfCategories distinct\\nrate categories for greater computational efficiency.   Final tree might be evaluated\\nautomatically under PROTGAMMAmatrixName[F|X], depending on the tree search option.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\nThe ASC prefix willl correct the likelihood for ascertainment bias.\\n\\\"-m PROTGAMMAmatrixName[F|X]\\\"     : specified AA matrix + Optimization of substitution rates + GAMMA model of rate\\nheterogeneity (alpha parameter will be estimated).\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m ASC_PROTGAMMAmatrixName[F|X]\\\" : specified AA matrix + Optimization of substitution rates + GAMMA model of rate\\nheterogeneity (alpha parameter will be estimated).\\nThe ASC prefix willl correct the likelihood for ascertainment bias.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\n\\\"-m PROTGAMMAImatrixName[F|X]\\\"    : Same as PROTGAMMAmatrixName[F|X], but with estimate of proportion of invariable sites.\\nWith the optional \\\"X\\\" appendix you can specify a ML estimate of base frequencies.\\nAvailable AA substitution models:\\nDAYHOFF, DCMUT, JTT, MTREV, WAG, RTREV, CPREV, VT,\\nBLOSUM62, MTMAM, LG, MTART, MTZOA, PMB, HIVB, HIVW,\\nJTTDCMUT, FLU, STMTREV, DUMMY, DUMMY2, AUTO, LG4M, LG4X,\\nPROT_FILE, GTR_UNLINKED, GTR\\nWith the optional \\\"F\\\" appendix you can specify if you want to use empirical base frequencies.\\nAUTOF and AUTOX are not supported any more, if you specify AUTO it will test prot subst. models with and without empirical\\nbase frequencies now!\\nPlease note that for partitioned models you can in addition specify the per-gene AA model in\\nthe partition file (see manual for details). Also note that if you estimate AA GTR parameters on a partitioned\\ndataset, they will be linked (estimated jointly) across all partitions to avoid over-parametrization"
    switch_only_has: "Switch on estimation of individual per-partition branch lengths. Only has effect when used in combination with \\\"-q\\\"\\nBranch lengths for individual partitions will be printed to separate files\\nA weighted average of the branch lengths is computed by using the respective partition lengths\\nDEFAULT: OFF"
    specifies_name_output: "Specifies the name of the output file."
    specify_name_single: "Specify the name of a single outgroup or a comma-separated list of outgroups, eg \\\"-o Rat\\\"\\nor \\\"-o Rat,Mouse\\\", in case that multiple outgroups are not monophyletic the first name\\nin the list will be selected as outgroup, don't leave spaces between taxon names!"
    disable_check_completely: "Disable check for completely undetermined sequence in alignment.\\nThe program will not exit with an error message when \\\"-O\\\" is specified.\\nDEFAULT: check enabled"
    specify_random_seed: "Specify a random number seed for the parsimony inferences. This allows you to reproduce your results\\nand will help me debug the program."
    specify_name_userdefined: "Specify the file name of a user-defined AA (Protein) substitution model. This file must contain\\n420 entries, the first 400 being the AA substitution rates (this must be a symmetric matrix) and the\\nlast 20 are the empirical base frequencies"
    specify_file_name_contains: "Specify the file name which contains the assignment of models to alignment\\npartitions for multiple models of substitution. For the syntax of this file\\nplease consult the manual."
    binary_binary_constraint: "Specify the file name of a binary constraint tree.\\nthis tree does not need to be comprehensive, i.e. must not contain all taxa"
    specify_binary_model: "Specify the file name of a binary model parameter file that has previously been generated\\nwith RAxML using the -f e tree evaluation option. The file name should be:\\nRAxML_binaryModelParameters.runID"
    specify_name_alignment: "Specify the name of the alignment data file in PHYLIP format"
    specify_name_secondary: "Specify the name of a secondary structure file. The file can contain \\\".\\\" for\\nalignment columns that do not form part of a stem and characters \\\"()<>[]{}\\\" to define\\nstem regions and pseudoknots"
    specify_user_starting: "Specify a user starting tree file name in Newick format"
    pthreads_version_only: "PTHREADS VERSION ONLY! Specify the number of threads you want to run.\\nMake sure to set \\\"-T\\\" to at most the number of CPUs you have on your machine,\\notherwise, there will be a huge performance decrease!"
    use_median_off: "use the median for the discrete approximation of the GAMMA model of rate heterogeneity\\nDEFAULT: OFF"
    try_save_memory: "Try to save memory by using SEV-based implementation for gap columns on large gappy alignments\\nThe technique is described here: http://www.biomedcentral.com/1471-2105/12/470\\nThis will only work for DNA and/or PROTEIN data and only with the SSE3 or AVX-vextorized version of the code."
    display_version_information: "Display version information"
    disable_rate_heterogeneity: "Disable rate heterogeneity among sites model and use one without rate heterogeneity instead.\\nOnly works if you specify the CAT model of rate heterogeneity.\\nDEFAULT: use rate heterogeneity"
    full_path_directory: "FULL (!) path to the directory into which RAxML shall write its output files\\nDEFAULT: current directory"
    sliding_window_size: "Sliding window size for leave-one-out site-specific placement bias algorithm\\nonly effective when used in combination with \\\"-f S\\\"\\nDEFAULT: 100 sites"
    specify_seed_rapid: "Specify an integer number (random seed) and turn on rapid bootstrapping\\nCAUTION: unlike in version 7.0.4 RAxML will conduct rapid BS replicates under\\nthe model of rate heterogeneity you specified via \\\"-m\\\" and not by default under CAT"
    same_option_however: "Same as the \\\"-y\\\" option below, however the parsimony search is more superficial.\\nRAxML will only do a randomized stepwise addition order parsimony tree reconstruction\\nwithout performing any additional SPRs.\\nThis may be helpful for very broad whole-genome datasets, since this can generate topologically\\nmore different starting trees.\\nDEFAULT: OFF"
    you_want_compute: "If you want to only compute a parsimony starting tree with RAxML specify \\\"-y\\\",\\nthe program will exit after computation of the starting tree\\nDEFAULT: OFF"
    pass_quartet_grouping: "Pass a quartet grouping file name defining four groups from which to draw quartets\\nThe file input format must contain 4 groups in the following form:\\n(Chicken, Human, Loach), (Cow, Carp), (Mouse, Rat, Seal), (Whale, Frog);\\nOnly works in combination with -f q !"
    file_containing_trees: "Specify the file name of a file containing multiple trees e.g. from a bootstrap\\nthat shall be used to draw bipartition values onto a tree provided with \\\"-t\\\",\\nIt can also be used to compute per site log likelihoods in combination with \\\"-f g\\\"\\nand to read a bunch of trees for a couple of other options (\\\"-f h\\\", \\\"-f m\\\", \\\"-f n\\\")."
    mesquite: "output files that can be parsed by Mesquite.\\nDEFAULT: Off"
    silent: "printout of warnings related to identical sequences and entirely undetermined sites in the alignment\\nDEFAULT: Off"
    no_seq_check: "checking the input MSA for identical sequences and entirely undetermined sites.\\nEnabling this option may save time, in particular for large phylogenomic alignments.\\nBefore using this, make sure to check the alignment using the \\\"-f c\\\" option!\\nDEFAULT: Off"
    no_bfgs: "automatic usage of BFGS method to optimize GTR rates on unpartitioned DNA datasets\\nDEFAULT: BFGS on"
    asc_corr: "to specify the type of ascertainment bias correction you wish to use. There are 3\\ntypes available:\\n--asc-corr=lewis: the standard correction by Paul Lewis\\n--asc-corr=felsenstein: a correction introduced by Joe Felsenstein that allows to explicitely specify\\nthe number of invariable sites (if known) one wants to correct for.\\n--asc-corr=stamatakis: a correction introduced by myself that allows to explicitely specify\\nthe number of invariable sites for each character (if known) one wants to correct for."
    flag_check: "using this option, RAxML will only check if all command line flags specifed are available and then exit\\nwith a message listing all invalid command line flags or with a message stating that all flags are valid."
    auto_prot: "|bic|aic|aicc When using automatic protein model selection you can chose the criterion for selecting these models.\\nRAxML will test all available prot subst. models except for LG4M, LG4X and GTR-based models, with and without empirical base frequencies.\\nYou can chose between ML score based selection and the BIC, AIC, and AICc criteria.\\nDEFAULT: ml"
    epa_keep_placements: "specify the number of potential placements you want to keep for each read in the EPA algorithm.\\nNote that, the actual values printed will also depend on the settings for --epa-prob-threshold=threshold !\\nDEFAULT: 7"
    epa_prob_threshold: "specify a percent threshold for including potential placements of a read depending on the\\nmaximum placement weight for this read. If you set this value to 0.01 placements that have a placement weight of 1 per cent of\\nthe maximum placement will still be printed to file if the setting of --epa-keep-placements allows for it\\nDEFAULT: 0.01"
    epa_accumulated_threshold: "specify an accumulated likelihood weight threshold for which different placements of read are printed\\nto file. Placements for a read will be printed until the sum of their placement weights has reached the threshold value.\\nNote that, this option can neither be used in combination with --epa-prob-threshold nor with --epa-keep-placements!"
    jc_six_nine: "that all DNA partitions will evolve under the Jukes-Cantor model, this overrides all other model specifications for DNA partitions.\\nDEFAULT: Off"
    k_eight_zero: "that all DNA partitions will evolve under the K80 model, this overrides all other model specifications for DNA partitions.\\nDEFAULT: Off"
    hky_eight_five: "that all DNA partitions will evolve under the HKY85 model, this overrides all other model specifications for DNA partitions.\\nDEFAULT: Off"
    boots_top_perms: "specify the number of permutations to be conducted for the bootstopping/bootstrap convergence test.\\nThe allowed minimum number is 100!\\nDEFAULT: 100"
    quartets_without_replacement: "that quartets are randomly subsampled, but without replacement.\\nDEFAULT: random sampling with replacements"
    print_identical_sequences: "that RAxML shall automatically generate a .reduced alignment with all\\nundetermined columns removed, but without removing exactly identical sequences\\nDEFAULT: identical sequences will also be removed in the .reduced file\\n"
  }
  output {
    File out_stdout = stdout()
    File out_specifies_name_output = "${in_specifies_name_output}"
    File out_full_path_directory = "${in_full_path_directory}"
  }
}