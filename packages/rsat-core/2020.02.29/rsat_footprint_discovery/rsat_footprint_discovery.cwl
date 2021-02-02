class: CommandLineTool
id: rsat_footprint_discovery.cwl
inputs:
- id: in_bg_file
  doc: ', see below)'
  type: boolean
  inputBinding:
    prefix: -bgfile
- id: in_org_list_dot
  doc: "\e[1m-org_list organisms_list_file\e[0m\nThis option gives the posibility\
    \ to analyse a user-specified set of\nreference organisms rather than a full taxon.\n\
    File format: the first word of each line is used as organism ID. Any\nsubsequent\
    \ text is ignored. The comment char is \";\".\nThis option is incompatible with\
    \ the option \"-taxon\".\n\e[1m-unique_species\e[0m\nRetain at most one organism\
    \ per species. This enables to filter out\nthe numerous strains sequences for\
    \ some species of particular\ninterest. (e.g. Escherichia coli, Bacillus subtilis,\
    \ ...).\n\e[1m-unique_genus\e[0m\nRetain at most one organism per genus. Same\
    \ filter as for\n-unique_species, but at the level of the genus. At this level\
    \ we\ndon't expect to have much redundancy, but this option can be useful\nto\
    \ select a reasonable number of organisms, e.g. to draw\nphylogenetic profile\
    \ heatmaps.\n\e[1m-no_purge\e[0m\nThis option can only be used combined with the\
    \ -org_list option,\nthis gives the posibility to analyse a given set of sequences\n\
    managing sequence redundancy using a list of \"no redundant\"\norganisms.\nThe\
    \ file format is one organisms per line, the comment char is \";\"\n\e[1m-orthologs_list\
    \ file\e[0m\nThis option gives the posibility to analyse a user-specified set\
    \ of\northologs for specific reference organisms instead of using the BBH\nset\
    \ of orthologs provided by RSAT.\nThe query genes included here will be the ones\
    \ analyzed by the\nprogram.\nFile format: Tab delimited file with three columns.\n\
    ID of the query gene (in the query organism)\nID of the reference gene\nID of\
    \ the reference organism\nFurther columns will be ignored. The comment char is\
    \ \";\".\nThis option is incompatible with the option \"-taxon\", and \"-bg_model\n\
    taxfreq\" option.\n\e[1m-use_tree_org\e[0m\nOnly uses organisms in the phylogenetic\
    \ tree for orthologs search.\nEspecified by option -tree. Incompatible with \"\
    -taxon\",\n\"-orthologs_list\" and \"-org_list\".\n\e[1m-q query\e[0m\nQuery gene.\n\
    This option can be used iteratively on the command line to specify\nmultiple genes.\n\
    \e[1m-genes\e[0m\nSpecify a file containing a list of genes. Multiple genes can\
    \ also\nbe specified by using iteratively the option -q.\n\e[1m-all_genes\e[0m\n\
    Automatically analyze all the genes of a query genome, and store\neach result\
    \ in a separate folder (the folder name is defined\nautomatically).\n\e[1m-max_genes\e\
    [0m\nMaximal number of genes to analyze.\n\e[1m-skip #\e[0m\nSkip the first #\
    \ genes (useful for quick testing and for resuming\ninterrupted tasks).\n\e[1m-last\
    \ #\e[0m\nStop after having treated the first # genes (useful for quick\ntesting).\n\
    \e[1m-o output_root_dir\e[0m\nMain output directory. The results will be dispatched\
    \ in\nsub-directories, defined according to the taxon, query organism and\nquery\
    \ gene name(s).\nIf the main output dir is not specified, the program automatically\n\
    sets it to \"footprints\".\n\e[1m-batch\e[0m\nGenerate one command per query gene,\
    \ and post it on the queue of a\nPC cluster.\n\e[1m-dry\e[0m\nDry run: print the\
    \ commands but do not execute them.\n\e[1m-nodie\e[0m\nDo not die in case a sub-program\
    \ returns an error.\nThe option -nodie allows you to circumvent problems with\
    \ specific\nsub-tasks, but this is not recommended because the results may be\n\
    incomplete.\n\e[1m-sep_genes\e[0m\nSearch footprints for each query gene separately.\
    \ The results are\nstored in a separate folder for each gene. The folder name\
    \ is\ndefined automatically.\nBy default, when several query genes are specified,\
    \ the program\ncollects orthologs and analyzes their promoters altogether. The\n\
    option \e[33m-sep\e[0m allows to automatize the detection of footprint in a set\n\
    of genes that will be treated separately.\n\e[1m-infer_operons\e[0m\nInfer operons\
    \ in order to retrieve the promoters of the predicted\noperon leader genes rather\
    \ than those located immediately upstream\nof the orthologs. This method uses\
    \ a threshold on the intergenic\ndistance.\n\e[1m-dist_thr value\e[0m\nSpecify\
    \ here the intergenic distance threshold in base pairs. Pair\nof adjacent genes\
    \ with intergenic distance equal or less than this\nvalue are predicted to be\
    \ within operon. (default : 55)\n\e[1m-task\e[0m\nSpecify a subset of tasks to\
    \ be executed.\nBy default, the program runs all necessary tasks. However, in\
    \ some\ncases, it can be useful to select one or several tasks to be\nexecuted\
    \ separately. For instance, after having collected all the\npromoter sequences\
    \ of ortholog genes, one might desire to run the\npattern detection with various\
    \ parameter values without having to\nretrieve the same sequences each time.\n\
    Beware: task selection requires expertise, because most tasks\ndepends on the\
    \ prior execution of some other tasks in the workflow.\nSelecting tasks before\
    \ their prerequisite tasks have been completed\nwill provoke fatal errors.\n\e\
    [1mSupported tasks:\e[0m\nFor all footprint programs (\e[33mfootprint-discovery\e\
    [0m,\n\e[33mfootprint-scan\e[0m).\n\e[33mall\e[0m Run all supported tasks. If\
    \ no task is specified, all tasks\nare performed.\n\e[33moperons\e[0m\nInfer operons\
    \ (using \e[33minfer-operons\e[0m. This option should be\nused only for Bacteria.\n\
    \e[33mquery_seq\e[0m\nRetrieve upstream sequence of the query genes (using\n\e\
    [33mretrieve-seq\e[0m).\n\e[33morthologs\e[0m\nIdentify theorthologs of the query\
    \ genes in the selected\ntaxon (using \e[33mget-orthologs\e[0m).\n\e[33mortho_seq\e\
    [0m\nRetrieve upstream sequences of the orthologs (using\n\e[33mretrieve-seq-multigenome\e\
    [0m).\n\e[33mpurge\e[0m\nPurge upstream sequences of the orthologs (using \e[33mpurge-seq\e\
    [0m).\n\e[33mgene_index\e[0m\nGenerate an HTML index with links to the result\
    \ files.\nWith the option -sep_genes, one index is generated for each\ngene separately.\
    \ An index summarizing the results for all\ngenes can be generated using the option\
    \ -index.\n\e[33mindex\e[0m\nGenerate a HTML table with links to the individual\
    \ result\nfiles. The table contains one row per query gene, one column\nby output\
    \ type (sequences, dyads, maps, ...) for\nfootpritn-discovery and for footprint-scan\
    \ on line per\nTF-gene interacction.\nTasks specific to \e[33mfootprint-discovery\e\
    [0m\n\e[33mfilter_dyads\e[0m\nDetect all dyads present with at elast one occurrence\
    \ in the\nupstream sequence of the query gene (using \e[33mdyad-analysis\e[0m).\n\
    Those dyads will be used as filter if the option \e[33m-filter\e[0m has\nbeen\
    \ specifed.\n\e[33mdyads\e[0m\nDetect significantly over-represented in upstream\
    \ sequences\nof orhtologs (using \e[33mdyad-analysis\e[0m).\n\e[33mmap\e[0m Draw\
    \ feature maps showing the location of over-represented\ndyads in upstream sequences\
    \ of promoters (using\n\e[33mfeature-map\e[0m).\n\e[33mnetwork\e[0m\nInfer a co-regulation\
    \ network from the footprints, as\ndescribed in Brohee et al. (2011).\n\e[33mindex\e\
    [0m\nGenerate an index file for each gene separately. The index\nfile is in the\
    \ gene-specific directory, it is complementary\nto the general index file generated\
    \ with the task\n\"synthesis\".\nTasks specific to \e[33mfootprint-scan\e[0m\n\
    \e[33morthologs_tf\e[0m\nOrtholgous genes will be obtained for the genes realted\
    \ to\nthe specified trasncription factors. This task shoulb be\nexecuted befor\
    \ the option -orthologs when a tf is specified.\nSee -tf option description for\
    \ more information.\n\e[33mocc_sig\e[0m\nCompute the significance of number of\
    \ matrix hit occurrences\nas a function of the weight score (\e[33musing matrix-scan\e\
    [0m and\n\e[33mmatrix-scan-quick\e[0m).\n\e[33mocc_sig_graph\e[0m\nGenerate graphs\
    \ showing the distributions of occurrences and\ntheir significances, as a function\
    \ of the weight score\n(using >XYgraph>).\n\e[33mscan\e[0m\nScan upstream sequences\
    \ to detect hits above a given\nthreshold (using \e[33mmatrix-scan\e[0m).\n\e\
    [33mmap\e[0m Draw the feature map of the hits (using \e[33mfeature-mp\e[0m).\n\
    \e[1m-rand\e[0m\nWhen the option -rand is activated, the program replaces each\n\
    ortholog by a gene selected at random in the genome where this\northolg was found.\n\
    This option is used (for example by footprint-scan and\nfootprint-discovery to\
    \ perform negative controls, i.e. check the\nrate of false positives in randomly\
    \ selected promoters of the\nreference taxon.\n\e[1m-map_format\e[0m\nFormat for\
    \ the feature map.\nSupported: any format supported by the program feature-map.\n\
    \e[1m-index\e[0m\nDeprecated, replaced by the task \"index\".\n\e[1m-diamond\e\
    [0m\nUse ranks_dmnd.tab from diamond blast computed in genome-blast.\n\e[1m-synthesis\e\
    [0m\nThis option generated synthetic tables (in tab-delimited text and\nhtml)\
    \ for all the results. It should be combined with the option\n\e[33m-sep_genes\e\
    [0m. The synthetic tables contain one row per gene, and one\ncolumn per parameter.\
    \ They summarize the results (maximal\nsignificance, top-ranking motifs) and give\
    \ pointers to the detailed\nresult files.\n"
  type: boolean
  inputBinding:
    prefix: -org_list.
- id: in_footprint_discovery
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: Motif discovery
  type: string
  inputBinding:
    position: 0
- id: in_moutput_formatm
  doc: "\e[1mOUTPUT FORMAT\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_feature_map
  doc: "NOTE : 'ortho' is replaced by 'leaders' in the filename prefix with"
  type: string
  inputBinding:
    position: 0
- id: in_get_orthologs
  doc: dyad-analysis
  type: string
  inputBinding:
    position: 0
- id: in_footprint_scan
  doc: "\e[1mWISH LIST\e[0m"
  type: string
  inputBinding:
    position: 1
- id: in_soon_dot
  doc: "\e[1m-taxa\e[0m\nSpecify a file containing a list of taxa, each of which will\
    \ be\nanalyzed separately. The results are stored in a separate folder for\neach\
    \ taxon. The folder name is defined automatically."
  type: string
  inputBinding:
    position: 0
- id: in_multiplefields_can_entered
  doc: Multiple-fields can be entered either by calling this argument
  type: string
  inputBinding:
    position: 0
- id: in_fields_dot
  doc: "\e[1m-bg_model taxfreq|org_list|monads|file\e[0m"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- footprint-discovery
