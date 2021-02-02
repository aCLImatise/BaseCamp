class: CommandLineTool
id: raxmlp.cwl
inputs:
- id: in_specify_column_name
  doc: "[-a weightFileName] [-A secondaryStructureSubstModel]\n[-b bootstrapRandomNumberSeed]\
    \ [-B wcCriterionThreshold]\n[-c numberOfCategories] [-C] [-d] [-D]\n[-e likelihoodEpsilon]\
    \ [-E excludeFileName]\n[-f a|b|c|d|e|E|F|g|h|i|I|j|m|n|o|p|r|s|t|u|U|v|w|x|y]\
    \ [-F]\n[-g groupingFileName] [-G placementThreshold] [-h] [-H placementThreshold]\n\
    [-i initialRearrangementSetting] [-I autoFC|autoMR|autoMRE|autoMRE_IGN]\n[-j]\
    \ [-J MR|MRE|STRICT] [-k] [-K] [-M]\n[-o outGroupName1[,outGroupName2[,...]]]\
    \ [-O checkPointInterval]\n[-p parsimonyRandomSeed] [-P proteinModel]\n[-q multipleModelFileName]\
    \ [-Q] [-r binaryConstraintTree]\n[-S secondaryStructureFile] [-t userStartingTree]\n\
    [-T numberOfThreads] [-v] [-w workingDirectory]\n[-x rapidBootstrapRandomNumberSeed]\
    \ [-y] [-Y]\n[-z multipleTreesFile] [-#|-N numberOfRuns|autoFC|autoMR|autoMRE|autoMRE_IGN]\n\
    -a      Specify a column weight file name to assign individual weights to each\
    \ column of\nthe alignment. Those weights must be integers separated by any type\
    \ and number\nof whitespaces whithin a separate file, see file \"example_weights\"\
    \ for an example.\n-A      Specify one of the secondary structure substitution\
    \ models implemented in RAxML.\nThe same nomenclature as in the PHASE manual is\
    \ used, available models:\nS6A, S6B, S6C, S6D, S6E, S7A, S7B, S7C, S7D, S7E, S7F,\
    \ S16, S16A, S16B\nDEFAULT: 16-state GTR model (S16)\n-b      Specify an integer\
    \ number (random seed) and turn on bootstrapping\nDEFAULT: OFF\n-B      specify\
    \ a floating point number between 0.0 and 1.0 that will be used as cutoff threshold\n\
    for the MR-based bootstopping criteria. The recommended setting is 0.03.\nDEFAULT:\
    \ 0.03 (recommended empirically determined setting)\n-c      Specify number of\
    \ distinct rate catgories for RAxML when modelOfEvolution\nis set to GTRCAT or\
    \ GTRMIX\nIndividual per-site rates are categorized into numberOfCategories rate\n\
    categories to accelerate computations.\nDEFAULT: 25\n-C      Conduct model parameter\
    \ optimization on gappy, partitioned multi-gene alignments with per-partition\n\
    branch length estimates (-M enabled) using the fast method with pointer meshes\
    \ described in:\nStamatakis and Ott: \"Efficient computation of the phylogenetic\
    \ likelihood function on multi-gene alignments and multi-core processors\"\nWARNING:\
    \ We can not conduct useful tree searches using this method yet! Does not work\
    \ with Pthreads version.\n-d      start ML optimization from random starting tree\n\
    DEFAULT: OFF\n-D      ML search convergence criterion. This will break off ML\
    \ searches if the relative\nRobinson-Foulds distance between the trees obtained\
    \ from two consecutive lazy SPR cycles\nis smaller or equal to 1%. Usage recommended\
    \ for very large datasets in terms of taxa.\nOn trees with more than 500 taxa\
    \ this will yield execution time improvements of approximately 50%\nWhile yielding\
    \ only slightly worse trees.\nDEFAULT: OFF\n-e      set model optimization precision\
    \ in log likelihood units for final\noptimization of tree topology under MIX/MIXI\
    \ or GAMMA/GAMMAI\nDEFAULT: 0.1   for models not using proportion of invariant\
    \ sites estimate\n0.001 for models using proportion of invariant sites estimate\n\
    -E      specify an exclude file name, that contains a specification of alignment\
    \ positions you wish to exclude.\nFormat is similar to Nexus, the file shall contain\
    \ entries like \"100-200 300-400\", to exclude a\nsingle column write, e.g., \"\
    100-100\", if you use a mixed model, an appropriatly adapted model file\nwill\
    \ be written.\n-f      select algorithm:\n\"-f a\": rapid Bootstrap analysis and\
    \ search for best-scoring ML tree in one program run\n\"-f b\": draw bipartition\
    \ information on a tree provided with \"-t\" based on multiple trees\n(e.g., from\
    \ a bootstrap) in a file specifed by \"-z\"\n\"-f c\": check if the alignment\
    \ can be properly read by RAxML\n\"-f d\": new rapid hill-climbing\nDEFAULT: ON\n\
    \"-f e\": optimize model+branch lengths for given input tree under GAMMA/GAMMAI\
    \ only\n\"-f E\": execute very fast experimental tree search, at present only\
    \ for testing\n\"-f F\": execute fast experimental tree search, at present only\
    \ for testing\n\"-f g\": compute per site log Likelihoods for one ore more trees\
    \ passed via\n\"-z\" and write them to a file that can be read by CONSEL\nWARNING:\
    \ does not print likelihoods in the original column order\n\"-f h\": compute log\
    \ likelihood test (SH-test) between best tree passed via \"-t\"\nand a bunch of\
    \ other trees passed via \"-z\"\n\"-f i\": EXPERIMENTAL do not use for real tree\
    \ inferences: conducts a single cycle of fast lazy SPR moves\non a given input\
    \ tree, to be used in combination with -C and -M\n\"-f I\": EXPERIMENTAL do not\
    \ use for real tree inferences: conducts a single cycle of thorough lazy SPR moves\n\
    on a given input tree, to be used in combination with -C and -M\n\"-f j\": generate\
    \ a bunch of bootstrapped alignment files from an original alignemnt file.\nYou\
    \ need to specify a seed with \"-b\" and the number of replicates with \"-#\"\n\
    \"-f m\": compare bipartitions between two bunches of trees passed via \"-t\"\
    \ and \"-z\"\nrespectively. This will return the Pearson correlation between all\
    \ bipartitions found\nin the two tree files. A file called RAxML_bipartitionFrequencies.outpuFileName\n\
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
    \ (reference + query)\nDEFAULT for \"-f\": new rapid hill climbing\n-F      enable\
    \ ML tree searches under CAT model for very large trees without switching to\n\
    GAMMA in the end (saves memory).\nThis option can also be used with the GAMMA\
    \ models in order to avoid the thorough optimization\nof the best-scoring ML tree\
    \ in the end.\nDEFAULT: OFF\n-g      specify the file name of a multifurcating\
    \ constraint tree\nthis tree does not need to be comprehensive, i.e. must not\
    \ contain all taxa\n-G      enable the ML-based evolutionary placement algorithm\
    \ heuristics\nby specifiyng a threshold value (fraction of insertion branches\
    \ to be evaluated\nusing slow insertions under ML).\n-h      Display this help\
    \ message.\n-H      enable the MP-based evolutionary placement algorithm heuristics\n\
    by specifiyng a threshold value (fraction of insertion branches to be evaluated\n\
    using slow insertions under ML).\n-i      Initial rearrangement setting for the\
    \ subsequent application of topological\nchanges phase\n-I      a posteriori bootstopping\
    \ analysis. Use:\n\"-I autoFC\" for the frequency-based criterion\n\"-I autoMR\"\
    \ for the majority-rule consensus tree criterion\n\"-I autoMRE\" for the extended\
    \ majority-rule consensus tree criterion\n\"-I autoMRE_IGN\" for metrics similar\
    \ to MRE, but include bipartitions under the threshold whether they are compatible\n\
    or not. This emulates MRE but is faster to compute.\nYou also need to pass a tree\
    \ file containg several bootstrap replicates via \"-z\"\n-j      Specifies that\
    \ intermediate tree files shall be written to file during the standard ML and\
    \ BS tree searches.\nDEFAULT: OFF\n-J      Compute majority rule consensus tree\
    \ with \"-J MR\" or extended majority rule consensus tree with \"-J MRE\"\nor\
    \ strict consensus tree with \"-J STRICT\"\nYou will need to provide a tree file\
    \ containing several UNROOTED trees via \"-z\"\n-k      Specifies that bootstrapped\
    \ trees should be printed with branch lengths.\nThe bootstraps will run a bit\
    \ longer, because model parameters will be optimized\nat the end of each run under\
    \ GAMMA or GAMMA+P-Invar respectively.\nDEFAULT: OFF\n-K      Specify one of the\
    \ multi-state substitution models (max 32 states) implemented in RAxML.\nAvailable\
    \ models are: ORDERED, MK, GTR\nDEFAULT: GTR model\n-m      Model of Binary (Morphological),\
    \ Nucleotide, Multi-State, or Amino Acid Substitution:\nBINARY:\n\"-m BINCAT\"\
    \         : Optimization of site-specific\nevolutionary rates which are categorized\
    \ into numberOfCategories distinct\nrate categories for greater computational\
    \ efficiency. Final tree might be evaluated\nautomatically under BINGAMMA, depending\
    \ on the tree search option\n\"-m BINCATI\"        : Optimization of site-specific\n\
    evolutionary rates which are categorized into numberOfCategories distinct\nrate\
    \ categories for greater computational efficiency. Final tree might be evaluated\n\
    automatically under BINGAMMAI, depending on the tree search option\n\"-m BINGAMMA\"\
    \       : GAMMA model of rate\nheterogeneity (alpha parameter will be estimated)\n\
    \"-m BINGAMMAI\"      : Same as BINGAMMA, but with estimate of proportion of invariable\
    \ sites\nNUCLEOTIDES:\n\"-m GTRCAT\"         : GTR + Optimization of substitution\
    \ rates + Optimization of site-specific\nevolutionary rates which are categorized\
    \ into numberOfCategories distinct\nrate categories for greater computational\
    \ efficiency.  Final tree might be evaluated\nunder GTRGAMMA, depending on the\
    \ tree search option\n\"-m GTRCAT_FLOAT\"   : Same as above but uses single-precision\
    \ floating point arithemtics instead of double-precision\nUsage only recommened\
    \ for testing, the code will run slower, but can save almost 50% of memory.\n\
    If you have problems with phylogenomic datasets and large memory requirements\
    \ you may give it a shot.\nKeep in mind that numerical stability seems to be okay\
    \ but needs further testing.\n\"-m GTRCATI\"        : GTR + Optimization of substitution\
    \ rates + Optimization of site-specific\nevolutionary rates which are categorized\
    \ into numberOfCategories distinct\nrate categories for greater computational\
    \ efficiency.  Final tree might be evaluated\nunder GTRGAMMAI, depending on the\
    \ tree search option\n\"-m GTRGAMMA\"       : GTR + Optimization of substitution\
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
    \ they will be linked (estimated jointly) across all partitions to avoid over-parametrization\n\
    -M      Switch on estimation of individual per-partition branch lengths. Only\
    \ has effect when used in combination with \"-q\"\nBranch lengths for individual\
    \ partitions will be printed to separate files\nA weighted average of the branch\
    \ lengths is computed by using the respective partition lengths\nDEFAULT: OFF\n\
    -n      Specifies the name of the output file.\n-o      Specify the name of a\
    \ single outgrpoup or a comma-separated list of outgroups, eg \"-o Rat\"\nor \"\
    -o Rat,Mouse\", in case that multiple outgroups are not monophyletic the first\
    \ name\nin the list will be selected as outgroup, don't leave spaces between taxon\
    \ names!\n-O      Enable checkpointing using the dmtcp library available at http://dmtcp.sourceforge.net/\n\
    This only works if you call the program by preceded by the command \"dmtcp_checkpoint\"\
    \nand if you compile a dedicated binary using the appropriate Makefile.\nWith\
    \ \"-O\" you can specify the interval between checkpoints in seconds.\nDEFAULT:\
    \ 3600.0 seconds\n-p      Specify a random number seed for the parsimony inferences.\
    \ This allows you to reproduce your results\nand will help me debug the program.\n\
    -P      Specify the file name of a user-defined AA (Protein) substitution model.\
    \ This file must contain\n420 entries, the first 400 being the AA substitution\
    \ rates (this must be a symmetric matrix) and the\nlast 20 are the empirical base\
    \ frequencies\n-q      Specify the file name which contains the assignment of\
    \ models to alignment\npartitions for multiple models of substitution. For the\
    \ syntax of this file\nplease consult the manual.\n-Q      Turn on computation\
    \ of SH-like support values on tree.\nDEFAULT: OFF\n-r      Specify the file name\
    \ of a binary constraint tree.\nthis tree does not need to be comprehensive, i.e.\
    \ must not contain all taxa\n-s      Specify the name of the alignment data file\
    \ in PHYLIP format\n-S      Specify the name of a secondary structure file. The\
    \ file can contain \".\" for\nalignment columns that do not form part of a stem\
    \ and characters \"()<>[]{}\" to define\nstem regions and pseudoknots\n-t    \
    \  Specify a user starting tree file name in Newick format\n-T      PTHREADS VERSION\
    \ ONLY! Specify the number of threads you want to run.\nMake sure to set \"-T\"\
    \ to at most the number of CPUs you have on your machine,\notherwise, there will\
    \ be a huge performance decrease!\n-v      Display version information\n-w   \
    \   Name of the working directory where RAxML will write its output files\nDEFAULT:\
    \ current directory\n-x      Specify an integer number (random seed) and turn\
    \ on rapid bootstrapping\nCAUTION: unlike in version 7.0.4 RAxML will conduct\
    \ rapid BS replicates under\nthe model of rate heterogeneity you specified via\
    \ \"-m\" and not by default under CAT\n-y      If you want to only compute a parsimony\
    \ starting tree with RAxML specify \"-y\",\nthe program will exit after computation\
    \ of the starting tree\nDEFAULT: OFF\n-Y      Do a more thorough parsimony tree\
    \ search using a parsimony ratchet and exit.\nspecify the number of ratchet searches\
    \ via \"-#\" or \"-N\"\nThis has just been implemented for completeness, if you\
    \ want a fast MP implementation use TNT\nDEFAULT: OFF\n-z      Specify the file\
    \ name of a file containing multiple trees e.g. from a bootstrap\nthat shall be\
    \ used to draw bipartition values onto a tree provided with \"-t\",\nIt can also\
    \ be used to compute per site log likelihoods in combination with \"-f g\"\nand\
    \ to read a bunch of trees for a couple of other options (\"-f h\", \"-f m\",\
    \ \"-f n\").\n-#|-N   Specify the number of alternative runs on distinct starting\
    \ trees\nIn combination with the \"-b\" option, this will invoke a multiple boostrap\
    \ analysis\nNote that \"-N\" has been added as an alternative since \"-#\" sometimes\
    \ caused problems\nwith certain MPI job submission systems, since \"-#\" is often\
    \ used to start comments.\nIf you want to use the bootstopping criteria specify\
    \ \"-# autoMR\" or \"-# autoMRE\" or \"-# autoMRE_IGN\"\nfor the majority-rule\
    \ tree based criteria (see -I option) or \"-# autoFC\" for the frequency-based\
    \ criterion.\nBootstopping will only work in combination with \"-x\" or \"-b\"\
    \nDEFAULT: 1 single analysis\n"
  type: File
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- raxmlp
