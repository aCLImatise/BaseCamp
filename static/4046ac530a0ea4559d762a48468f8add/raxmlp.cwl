class: CommandLineTool
id: raxmlp.cwl
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
- id: in_specify_number_set
  doc: "Specify number of distinct rate catgories for RAxML when modelOfEvolution\n\
    is set to GTRCAT or GTRMIX\nIndividual per-site rates are categorized into numberOfCategories\
    \ rate\ncategories to accelerate computations.\nDEFAULT: 25"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_conduct_model_parameter
  doc: "Conduct model parameter optimization on gappy, partitioned multi-gene alignments\
    \ with per-partition\nbranch length estimates (-M enabled) using the fast method\
    \ with pointer meshes described in:\nStamatakis and Ott: \"Efficient computation\
    \ of the phylogenetic likelihood function on multi-gene alignments and multi-core\
    \ processors\"\nWARNING: We can not conduct useful tree searches using this method\
    \ yet! Does not work with Pthreads version."
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
    \ of tree topology under MIX/MIXI or GAMMA/GAMMAI\nDEFAULT: 0.1   for models not\
    \ using proportion of invariant sites estimate\n0.001 for models using proportion\
    \ of invariant sites estimate"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_specify_exclude_name
  doc: "specify an exclude file name, that contains a specification of alignment positions\
    \ you wish to exclude.\nFormat is similar to Nexus, the file shall contain entries\
    \ like \"100-200 300-400\", to exclude a\nsingle column write, e.g., \"100-100\"\
    , if you use a mixed model, an appropriatly adapted model file\nwill be written."
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_select_algorithm_rapid
  doc: "select algorithm:\n\"-f a\": rapid Bootstrap analysis and search for best-scoring\
    \ ML tree in one program run\n\"-f b\": draw bipartition information on a tree\
    \ provided with \"-t\" based on multiple trees\n(e.g., from a bootstrap) in a\
    \ file specifed by \"-z\"\n\"-f c\": check if the alignment can be properly read\
    \ by RAxML\n\"-f d\": new rapid hill-climbing\nDEFAULT: ON\n\"-f e\": optimize\
    \ model+branch lengths for given input tree under GAMMA/GAMMAI only\n\"-f E\"\
    : execute very fast experimental tree search, at present only for testing\n\"\
    -f F\": execute fast experimental tree search, at present only for testing\n\"\
    -f g\": compute per site log Likelihoods for one ore more trees passed via\n\"\
    -z\" and write them to a file that can be read by CONSEL\nWARNING: does not print\
    \ likelihoods in the original column order\n\"-f h\": compute log likelihood test\
    \ (SH-test) between best tree passed via \"-t\"\nand a bunch of other trees passed\
    \ via \"-z\"\n\"-f i\": EXPERIMENTAL do not use for real tree inferences: conducts\
    \ a single cycle of fast lazy SPR moves\non a given input tree, to be used in\
    \ combination with -C and -M\n\"-f I\": EXPERIMENTAL do not use for real tree\
    \ inferences: conducts a single cycle of thorough lazy SPR moves\non a given input\
    \ tree, to be used in combination with -C and -M\n\"-f j\": generate a bunch of\
    \ bootstrapped alignment files from an original alignemnt file.\nYou need to specify\
    \ a seed with \"-b\" and the number of replicates with \"-#\"\n\"-f m\": compare\
    \ bipartitions between two bunches of trees passed via \"-t\" and \"-z\"\nrespectively.\
    \ This will return the Pearson correlation between all bipartitions found\nin\
    \ the two tree files. A file called RAxML_bipartitionFrequencies.outpuFileName\n\
    will be printed that contains the pair-wise bipartition frequencies of the two\
    \ sets\n\"-f n\": compute the log likelihood score of all trees contained in a\
    \ tree file provided by\n\"-z\" under GAMMA or GAMMA+P-Invar\n\"-f o\": old and\
    \ slower rapid hill-climbing without heuristic cutoff\n\"-f p\": perform pure\
    \ stepwise MP addition of new sequences to an incomplete starting tree and exit\n\
    \"-f r\": compute pairwise Robinson-Foulds (RF) distances between all pairs of\
    \ trees in a tree file passed via \"-z\"\nif the trees have node labales represented\
    \ as integer support values the program will also compute two flavors of\nthe\
    \ weighted Robinson-Foulds (WRF) distance\n\"-f s\": split up a multi-gene partitioned\
    \ alignment into the respective subalignments\n\"-f t\": do randomized tree searches\
    \ on one fixed starting tree\n\"-f u\": execute morphological weight calibration\
    \ using maximum likelihood, this will return a weight vector.\nyou need to provide\
    \ a morphological alignment and a reference tree via \"-t\"\n\"-f U\": execute\
    \ morphological wieght calibration using parsimony, this will return a weight\
    \ vector.\nyou need to provide a morphological alignment and a reference tree\
    \ via \"-t\"\n\"-f v\": classify a bunch of environmental sequences into a reference\
    \ tree using the slow heuristics without dynamic alignment\nyou will need to start\
    \ RAxML with a non-comprehensive reference tree and an alignment containing all\
    \ sequences (reference + query)\n\"-f w\": compute ELW test on a bunch of trees\
    \ passed via \"-z\"\n\"-f x\": compute pair-wise ML distances, ML model parameters\
    \ will be estimated on an MP\nstarting tree or a user-defined tree passed via\
    \ \"-t\", only allowed for GAMMA-based\nmodels of rate heterogeneity\n\"-f y\"\
    : classify a bunch of environmental sequences into a reference tree using the\
    \ fast heuristics without dynamic alignment\nyou will need to start RAxML with\
    \ a non-comprehensive reference tree and an alignment containing all sequences\
    \ (reference + query)\nDEFAULT for \"-f\": new rapid hill climbing"
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
- id: in_enable_mlbased_placement_algorithm_heuristicsby
  doc: "enable the ML-based evolutionary placement algorithm heuristics\nby specifiyng\
    \ a threshold value (fraction of insertion branches to be evaluated\nusing slow\
    \ insertions under ML)."
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_enable_mpbased_placement_algorithm_heuristicsby
  doc: "enable the MP-based evolutionary placement algorithm heuristics\nby specifiyng\
    \ a threshold value (fraction of insertion branches to be evaluated\nusing slow\
    \ insertions under ML)."
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
    \ consensus tree with \"-J MRE\"\nor strict consensus tree with \"-J STRICT\"\n\
    You will need to provide a tree file containing several UNROOTED trees via \"\
    -z\""
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
- id: in_model_substitutionbinary_optimization
  doc: "Model of Binary (Morphological), Nucleotide, Multi-State, or Amino Acid Substitution:\n\
    BINARY:\n\"-m BINCAT\"         : Optimization of site-specific\nevolutionary rates\
    \ which are categorized into numberOfCategories distinct\nrate categories for\
    \ greater computational efficiency. Final tree might be evaluated\nautomatically\
    \ under BINGAMMA, depending on the tree search option\n\"-m BINCATI\"        :\
    \ Optimization of site-specific\nevolutionary rates which are categorized into\
    \ numberOfCategories distinct\nrate categories for greater computational efficiency.\
    \ Final tree might be evaluated\nautomatically under BINGAMMAI, depending on the\
    \ tree search option\n\"-m BINGAMMA\"       : GAMMA model of rate\nheterogeneity\
    \ (alpha parameter will be estimated)\n\"-m BINGAMMAI\"      : Same as BINGAMMA,\
    \ but with estimate of proportion of invariable sites\nNUCLEOTIDES:\n\"-m GTRCAT\"\
    \         : GTR + Optimization of substitution rates + Optimization of site-specific\n\
    evolutionary rates which are categorized into numberOfCategories distinct\nrate\
    \ categories for greater computational efficiency.  Final tree might be evaluated\n\
    under GTRGAMMA, depending on the tree search option\n\"-m GTRCAT_FLOAT\"   : Same\
    \ as above but uses single-precision floating point arithemtics instead of double-precision\n\
    Usage only recommened for testing, the code will run slower, but can save almost\
    \ 50% of memory.\nIf you have problems with phylogenomic datasets and large memory\
    \ requirements you may give it a shot.\nKeep in mind that numerical stability\
    \ seems to be okay but needs further testing.\n\"-m GTRCATI\"        : GTR + Optimization\
    \ of substitution rates + Optimization of site-specific\nevolutionary rates which\
    \ are categorized into numberOfCategories distinct\nrate categories for greater\
    \ computational efficiency.  Final tree might be evaluated\nunder GTRGAMMAI, depending\
    \ on the tree search option\n\"-m GTRGAMMA\"       : GTR + Optimization of substitution\
    \ rates + GAMMA model of rate\nheterogeneity (alpha parameter will be estimated)\n\
    \"-m GTRGAMMA_FLOAT\" : Same as GTRGAMMA, but also with single-precision arithmetics,\
    \ same cautionary notes as for\nGTRCAT_FLOAT apply.\n\"-m GTRGAMMAI\"      : Same\
    \ as GTRGAMMA, but with estimate of proportion of invariable sites\nMULTI-STATE:\n\
    \"-m MULTICAT\"         : Optimization of site-specific\nevolutionary rates which\
    \ are categorized into numberOfCategories distinct\nrate categories for greater\
    \ computational efficiency. Final tree might be evaluated\nautomatically under\
    \ MULTIGAMMA, depending on the tree search option\n\"-m MULTICATI\"        : Optimization\
    \ of site-specific\nevolutionary rates which are categorized into numberOfCategories\
    \ distinct\nrate categories for greater computational efficiency. Final tree might\
    \ be evaluated\nautomatically under MULTIGAMMAI, depending on the tree search\
    \ option\n\"-m MULTIGAMMA\"       : GAMMA model of rate\nheterogeneity (alpha\
    \ parameter will be estimated)\n\"-m MULTIGAMMAI\"      : Same as MULTIGAMMA,\
    \ but with estimate of proportion of invariable sites\nYou can use up to 32 distinct\
    \ character states to encode multi-state regions, they must be used in the following\
    \ order:\n0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F, G, H, I, J, K, L, M,\
    \ N, O, P, Q, R, S, T, U, V\ni.e., if you have 6 distinct character states you\
    \ would use 0, 1, 2, 3, 4, 5 to encode these.\nThe substitution model for the\
    \ multi-state regions can be selected via the \"-K\" option\nAMINO ACIDS:\n\"\
    -m PROTCATmatrixName[F]\"         : specified AA matrix + Optimization of substitution\
    \ rates + Optimization of site-specific\nevolutionary rates which are categorized\
    \ into numberOfCategories distinct\nrate categories for greater computational\
    \ efficiency.   Final tree might be evaluated\nautomatically under PROTGAMMAmatrixName[f],\
    \ depending on the tree search option\n\"-m PROTCATmatrixName[F]_FLOAT\"   : PROTCAT\
    \ with single precision arithmetics, same cautionary notes as for GTRCAT_FLOAT\
    \ apply\n\"-m PROTCATImatrixName[F]\"        : specified AA matrix + Optimization\
    \ of substitution rates + Optimization of site-specific\nevolutionary rates which\
    \ are categorized into numberOfCategories distinct\nrate categories for greater\
    \ computational efficiency.   Final tree might be evaluated\nautomatically under\
    \ PROTGAMMAImatrixName[f], depending on the tree search option\n\"-m PROTGAMMAmatrixName[F]\"\
    \       : specified AA matrix + Optimization of substitution rates + GAMMA model\
    \ of rate\nheterogeneity (alpha parameter will be estimated)\n\"-m PROTGAMMAmatrixName[F]_FLOAT\"\
    \ : PROTGAMMA with single precision arithmetics, same cautionary notes as for\
    \ GTRCAT_FLOAT apply\n\"-m PROTGAMMAImatrixName[F]\"      : Same as PROTGAMMAmatrixName[F],\
    \ but with estimate of proportion of invariable sites\nAvailable AA substitution\
    \ models: DAYHOFF, DCMUT, JTT, MTREV, WAG, RTREV, CPREV, VT, BLOSUM62, MTMAM,\
    \ LG, GTR\nWith the optional \"F\" appendix you can specify if you want to use\
    \ empirical base frequencies\nPlease note that for mixed models you can in addition\
    \ specify the per-gene AA model in\nthe mixed model file (see manual for details).\
    \ Also note that if you estimate AA GTR parameters on a partitioned\ndataset,\
    \ they will be linked (estimated jointly) across all partitions to avoid over-parametrization"
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
  doc: "Specify the name of a single outgrpoup or a comma-separated list of outgroups,\
    \ eg \"-o Rat\"\nor \"-o Rat,Mouse\", in case that multiple outgroups are not\
    \ monophyletic the first name\nin the list will be selected as outgroup, don't\
    \ leave spaces between taxon names!"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_enable_checkpointing_using
  doc: "Enable checkpointing using the dmtcp library available at http://dmtcp.sourceforge.net/\n\
    This only works if you call the program by preceded by the command \"dmtcp_checkpoint\"\
    \nand if you compile a dedicated binary using the appropriate Makefile.\nWith\
    \ \"-O\" you can specify the interval between checkpoints in seconds.\nDEFAULT:\
    \ 3600.0 seconds"
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
- id: in_turn_computation_shlike
  doc: "Turn on computation of SH-like support values on tree.\nDEFAULT: OFF"
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_specify_name_binary
  doc: "Specify the file name of a binary constraint tree.\nthis tree does not need\
    \ to be comprehensive, i.e. must not contain all taxa"
  type: boolean?
  inputBinding:
    prefix: -r
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
- id: in_display_version_information
  doc: Display version information
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_name_working_directory
  doc: "Name of the working directory where RAxML will write its output files\nDEFAULT:\
    \ current directory"
  type: Directory?
  inputBinding:
    prefix: -w
- id: in_specify_seed_rapid
  doc: "Specify an integer number (random seed) and turn on rapid bootstrapping\n\
    CAUTION: unlike in version 7.0.4 RAxML will conduct rapid BS replicates under\n\
    the model of rate heterogeneity you specified via \"-m\" and not by default under\
    \ CAT"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_you_want_compute
  doc: "If you want to only compute a parsimony starting tree with RAxML specify \"\
    -y\",\nthe program will exit after computation of the starting tree\nDEFAULT:\
    \ OFF"
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_do_thorough_search
  doc: "Do a more thorough parsimony tree search using a parsimony ratchet and exit.\n\
    specify the number of ratchet searches via \"-#\" or \"-N\"\nThis has just been\
    \ implemented for completeness, if you want a fast MP implementation use TNT\n\
    DEFAULT: OFF"
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specifies_name_output
  doc: Specifies the name of the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_specifies_name_output)
- id: out_name_working_directory
  doc: "Name of the working directory where RAxML will write its output files\nDEFAULT:\
    \ current directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_name_working_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- raxmlp
