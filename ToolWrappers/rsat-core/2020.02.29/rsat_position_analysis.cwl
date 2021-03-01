class: CommandLineTool
id: rsat_position_analysis.cwl
inputs:
- id: in_specified_standard_input
  doc: "if not specified, the standard input is used.\nThis allows to place the command\
    \ within a pipe."
  type: File?
  inputBinding:
    prefix: -i
- id: in_seqtype
  doc: "|any\nSequence type"
  type: string?
  inputBinding:
    prefix: -seqtype
- id: in_last
  doc: "#\nStop after # sequences (for quick testing)\nThe possibility to limit the\
    \ analysis to a few sequences\n(e.g.50 of the input file can be useful for fine-tuning\n\
    the options and ensuring that the result will appear as\nrequested. Note that\
    \ this option should not be used for\nthe final analysis, since the significance\
    \ drastically\ndepends on the number of input sequences."
  type: boolean?
  inputBinding:
    prefix: -last
- id: in_skip
  doc: "#\nSkip the first # sequences."
  type: boolean?
  inputBinding:
    prefix: -skip
- id: in_first
  doc: "#\nFirst sequence to analyze.\nThe option \"-first n\" has the same effect\
    \ as \"-skip x\",\nwhere x = n-1.  These two somewhat redundant options\nexist\
    \ because in some cases it is easier to indicate the\nfirst sequences (e.g. for\
    \ naming result files according\nto the first and last sequences analyzed).\n\
    The options -skip, -last, -first and -seqnb are\nconvenient for analyzing successive\
    \ slices of at\ndifferent depths in the sequence file (e.g. from 1 to\n1000, then\
    \ from 5001 to 6000, then from 10001 to 11000,\netc). This allows to test if the\
    \ position bias of a\npattern is consistent over the whole sequence file, or if\n\
    it is confined to the top sequences.\nAn example of useful application of this\
    \ slice-based\nanalysis is to estimate the number of relevant sequences\nin peaks\
    \ returned by applying peak-calling programs on\nChIP-seq reads.  Peak sequences\
    \ should be sorted by\ndecreasing score values."
  type: boolean?
  inputBinding:
    prefix: -first
- id: in_seq_nb
  doc: "#\nMaximal number of sequences to analyze. The program stops\nreading the\
    \ sequences after having reached this\nnumber. This option is convenient for analyzing\n\
    successive slices of at different depths in the sequence\nfile (e.g. for peak\
    \ sequences sorted by decreasing\nscores.\nExample: analyze N sequences starting\
    \ from the X_th one.\n-first X -seqnnb N\nWhen used without -skip or -first, the\
    \ option -seqnb\ngives the same result as -last."
  type: boolean?
  inputBinding:
    prefix: -seqnb
- id: in_mask
  doc: "|lower\nMask lower or uppercases, respecively, i.e. replace\nselected case\
    \ by N characters."
  type: string?
  inputBinding:
    prefix: -mask
- id: in_format
  doc: "file format. Must be followed by one of the\nfollowing options:\nfasta (default)\n\
    wconsensus\nIG\nfilelist\nraw\nSee below for the description of these formats."
  type: File?
  inputBinding:
    prefix: -format
- id: in_outputfile_returns_list
  doc: "outputfile. Returns a list of the oligonucleotides\nencountered in the sequences,\
    \ with their frequencies."
  type: File?
  inputBinding:
    prefix: -o
- id: in__verbose_level
  doc: '#    verbose level.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_oligonucleotide_length
  doc: oligonucleotide length.
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_ci
  doc: "window interval (default 20 bases).\nThe width of the position windows (in\
    \ number of bases)"
  type: boolean?
  inputBinding:
    prefix: -ci
- id: in_origin
  doc: "| center | end\nReference for calculating positions.\nThe value should be\
    \ chosen according to the sequence\ntype. For instance:\n-origin start for downstream\
    \ sequences\n-origin end for promoter sequences\n-origin center can be useful\
    \ for ChIP-seq peaks, which\ncan have variable lengths, but are supposed to\n\
    be more or less centred on the TF binding\nqsites."
  type: string?
  inputBinding:
    prefix: -origin
- id: in_offset
  doc: "Add an offset to site positions. The offset value must\nbe an Integer number\
    \ (positive, null or\nnegative). This option allows to select an arbitrary\nposition\
    \ as origin.\nExample: the option I<-offset -100> can be used to\nspecify the\
    \ transcription start site (TSS) as origin,\nin a collection of promoter sequences\
    \ including 100\nresidues downstream of the TSS.\nNote: in previous versions,\
    \ -origin was used to\nspecify both the reference point and the offset. Since\n\
    March 2010, the offset is specified with the option\n-offset."
  type: boolean?
  inputBinding:
    prefix: -offset
- id: in_group_rc
  doc: group reverse complement pairs
  type: boolean?
  inputBinding:
    prefix: -grouprc
- id: in_nogroup_rc
  doc: do not group reverse complement pairs
  type: boolean?
  inputBinding:
    prefix: -nogrouprc
- id: in_sort
  doc: "sort oligonucleotides according to the chi2\nstatistics, reflecting the level\
    \ of bias in\ndistribution profile"
  type: boolean?
  inputBinding:
    prefix: -sort
- id: in_one_str
  doc: "inactivates the summation of occurrences on both\nstrands."
  type: boolean?
  inputBinding:
    prefix: -1str
- id: in_two_str
  doc: "oligonucleotide occurrences found on both stands are\nsummed."
  type: boolean?
  inputBinding:
    prefix: -2str
- id: in_noov
  doc: "no overlap\noverlapping occurrences of the same pattern are\nonly taken into\
    \ account once"
  type: boolean?
  inputBinding:
    prefix: -noov
- id: in_return
  doc: "supported fields:\nhtml    HTML formatted results + index file\ndistrib k-mer\
    \ occurrences per position window\nexp_occ expected occurrences for each window\n\
    chi     chi-square value\nrank    rank of the pattern according to the sorting\n\
    criterion\ngraphs  one graph file per oligont profile\nclusters run k-mer clustering\
    \ (regroup k-mers having\nsimilar occurrence profiles).\nSeveral return fields\
    \ can be entered, separated by\ncommas."
  type: File?
  inputBinding:
    prefix: -return
- id: in_task
  doc: "task1,task2,...\nSupported tasks:\npos: analyze oligonucleotide occurrences\
    \ (\"main\"\nanalysis)\nclusters: cluster oligonucleotides according to\ntheir\
    \ occurrence profiles.\nmatrices: build position-specific scoring matrices\nfrom\
    \ clusters of oligonucleotides occupying\nsimilar positions.\nWhen different values\
    \ would be entered for\noptions -min_clust_nb and -max_clust_nb,\nmatrices and\
    \ logos are only generated for the\nmaximal number of cluster (max_clust_nb),\
    \ for\nthe sake of time efficiency and readability of\nthe HTML reports.\ngraphs:\
    \ generate a XY graph with the occurernce\nprofile of each oligonucleotide.\n\
    index: generate the HTML file with links to the\nresult files.\nall: run all the\
    \ tasks above\nRun specific tasks rather than the whole analysis.\nThis option\
    \ mainly serve to avoir re-running the whole\nsequence analysis for re-running\
    \ cluster analysis with\nmodified parameters."
  type: boolean?
  inputBinding:
    prefix: -task
- id: in_markov
  doc: "Order for the Markov model use to compute\nposition-specific expected word\
    \ frequencies.\nBy default, expected frequencies are estimated by\nassuming a\
    \ homogeneous repartition of k-mer\noccurrences (as in the original publication\
    \ by van\nHelden et al., 2000).\nAlternatively, the option -markov indicates that\n\
    expected frequency of each k-mer in each position\nwindow will be calculated on\
    \ the basis of the observed\nfrequencies for smaller words."
  type: long?
  inputBinding:
    prefix: -markov
- id: in_lth_chi
  doc: "#      lower threshold on chi2\nreturn only words with a chi2 value > #"
  type: boolean?
  inputBinding:
    prefix: -lth_chi
- id: in_lth_sig
  doc: "#      lower threshold on significance\nreturn only words with a sig value\
    \ > #"
  type: boolean?
  inputBinding:
    prefix: -lth_sig
- id: in_lth_occ
  doc: "#      lower threshold on occurrences\nreturn only words with a number of\
    \ occurrences > #"
  type: boolean?
  inputBinding:
    prefix: -lth_occ
- id: in_uth_rank
  doc: "#     upper threshold on rank\nreturn maximum # words"
  type: boolean?
  inputBinding:
    prefix: -uth_rank
- id: in_max_graphs
  doc: '#   maximal number of graphs to export'
  type: boolean?
  inputBinding:
    prefix: -max_graphs
- id: in_pl
  doc: "A file containing a selection of patterns.  The\nanalysis is then restricted\
    \ to these patterns.  The\nfirst word of each new line is considered as a new\n\
    pattern.  A score can be associated to each pattern\nwith the option -sc."
  type: File?
  inputBinding:
    prefix: -pl
- id: in_sc
  doc: "#   score column\n(only valid whith the option -pl)\nThe column containing\
    \ a score value for each pattern\nof the pattern file"
  type: boolean?
  inputBinding:
    prefix: -sc
- id: in_min_pos
  doc: "#\nminimal position to take into account for the\nchi-square calculation This\
    \ value must be a multiple\nof the window interval."
  type: boolean?
  inputBinding:
    prefix: -minpos
- id: in_max_pos
  doc: "#\nmaximal position to take into account for the\nchi-square calculation This\
    \ value must be a multiple\nof the window interval."
  type: boolean?
  inputBinding:
    prefix: -maxpos
- id: in_no_check
  doc: "do not check the applicability condition on the\nchi-square. By default, the\
    \ program checks that each\nwindow has at least 5 observations. The chi-square\
    \ is\nbracketed for words which do not fill this\nconditions. It is now recognized\
    \ that this condition\nis too restrictive, and that the chi2 is still valid\n\
    with smaller clas effective. We allow to suppress the\nchecking, but the responsibility\
    \ is left to the user,\nto decide whether the chi2 is or not significant."
  type: boolean?
  inputBinding:
    prefix: -nocheck
- id: in_no_filter
  doc: "Do not discard oligos which do not fit the condition\nof applicability. Instead,\
    \ mark them by including the\nchi2 value in curly brackets."
  type: boolean?
  inputBinding:
    prefix: -nofilter
- id: in_header
  doc: "| midfloor | min | max | interval\nInformation to display in column headers\
    \ of the\ndistributions.\nmid: class middle points (centers)\nmidfloor: floor\
    \ of class middle points (centers).\nthis avoids to display non-integer mid points\n\
    (e.g. for interval 1-10 the midpoint is 5.5)\nmin: class min\nmax: class max\n\
    interval: class intervals: [min,max]"
  type: long?
  inputBinding:
    prefix: -header
- id: in_top_seq_for_matrices
  doc: "#\nSelect the top # sequences for building position-specific\nscoring matrices\
    \ (PSSM).  This argument is passed to the\nprogram matrix-from-pattern.\nThis\
    \ option does not affect the number of sequences used\nfor motif discovery (detecting\
    \ positionally biased\noligonucelotides), but it can be useful to test the\nsecond\
    \ phase of motif discovery: extracion of matrices\nfrom the selected oligonucleotides."
  type: boolean?
  inputBinding:
    prefix: -top_seq_for_matrices
- id: in_img_format
  doc: Image format (this parameter is passed to XYgraph).
  type: boolean?
  inputBinding:
    prefix: -img_format
- id: in_title
  doc: Title for the index table and position profile plots.
  type: boolean?
  inputBinding:
    prefix: -title
- id: in_clust_method
  doc: "Agglomeration rule for the hierarchical\nclustering. Supported: complete,\
    \ average, single,\nward. Default: complete."
  type: boolean?
  inputBinding:
    prefix: -clust_method
- id: in_clust_nb
  doc: "#\nNumber of clusters (default: 8)."
  type: boolean?
  inputBinding:
    prefix: -clust_nb
- id: in_clust_suffix
  doc: "Suffix to append to the cluster file and the directory\ncontianing cluster\
    \ graphics. Default: 'clusters'.\n"
  type: boolean?
  inputBinding:
    prefix: -clust_suffix
- id: in_position_analysis
  doc: 1998 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: pattern-discovery
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- position-analysis
