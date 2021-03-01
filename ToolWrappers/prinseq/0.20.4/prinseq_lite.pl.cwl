class: CommandLineTool
id: prinseq_lite.pl.cwl
inputs:
- id: in_man
  doc: Print the full documentation; ignore other arguments.
  type: boolean?
  inputBinding:
    prefix: -man
- id: in_version
  doc: Print program version; ignore other arguments.
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_verbose
  doc: Prints status and info messages during processing.
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_fast_q
  doc: "Input file in FASTQ format that contains the sequence and\nquality data. Use\
    \ stdin instead of a file name to read from\nSTDIN (-fasta stdin). This can be\
    \ useful to process compressed\nfiles using Unix pipes."
  type: File?
  inputBinding:
    prefix: -fastq
- id: in_fast_a
  doc: "Input file in FASTA format that contains the sequence data. Use\nstdin instead\
    \ of a file name to read from STDIN (-fastq stdin).\nThis can be useful to process\
    \ compressed files using Unix pipes."
  type: File?
  inputBinding:
    prefix: -fasta
- id: in_qual
  doc: Input file in QUAL format that contains the quality data.
  type: File?
  inputBinding:
    prefix: -qual
- id: in_fast_q_two
  doc: "For paired-end data only. Input file in FASTQ format that\ncontains the sequence\
    \ and quality data. The sequence identifiers\nfor two matching paired-end sequences\
    \ in separate files can be\nmarked by /1 and /2, or _L and _R, or _left and _right,\
    \ or must\nhave the exact same identifier in both input files. The input\nsequences\
    \ must be sorted by their sequence identifiers.\nSingletons are allowed in the\
    \ input files."
  type: File?
  inputBinding:
    prefix: -fastq2
- id: in_fast_a_two
  doc: "For paired-end data only. Input file in FASTA format that\ncontains the sequence\
    \ data. The sequence identifiers for two\nmatching paired-end sequences in separate\
    \ files can be marked by\n/1 and /2, or _L and _R, or _left and _right, or must\
    \ have the\nexact same identifier in both input files. The input sequences\nmust\
    \ be sorted by their sequence identifiers. Singletons are\nallowed in the input\
    \ files."
  type: File?
  inputBinding:
    prefix: -fasta2
- id: in_params
  doc: "Input file in text format that contains PRINSEQ parameters. Each\nparameter\
    \ should be specified on a new line and arguments should\nbe separated by spaces\
    \ or tabs. Comments can be specified on\nlines starting with the # sign. Can be\
    \ combined with command\nline parameters. Parameters specified on the command\
    \ line will\noverwrite the arguments in the file (if any)."
  type: File?
  inputBinding:
    prefix: -params
- id: in_sione_three
  doc: This option was replaced by option -phred64.
  type: boolean?
  inputBinding:
    prefix: -si13
- id: in_phred_six_four
  doc: "Quality data in FASTQ file is in Phred+64 format\n(http://en.wikipedia.org/wiki/FASTQ_format#Encoding).\
    \ Not\nrequired for Illumina 1.8+, Sanger, Roche/454, Ion Torrent,\nPacBio data."
  type: boolean?
  inputBinding:
    prefix: -phred64
- id: in_aa
  doc: "Input is amino acid (protein) sequences instead of nucleic acid\n(DNA or RNA)\
    \ sequences. Allowed amino acid characters:\nABCDEFGHIKLMNOPQRSTUVWYZXabcdefghiklmmopqrstuvwyzx*-\
    \ and allowed\nnucleic acid characters: ACGTURYKMSWBDHVNXacgturykmswbdhvnx-\n\
    The following options are ignored for -aa:\nstats_dinuc,stats_tag,stats_ns,dna_rna"
  type: boolean?
  inputBinding:
    prefix: -aa
- id: in_out_format
  doc: "To change the output format, use one of the following options.\nIf not defined,\
    \ the output format will be the same as the input\nformat.\n1 (FASTA only), 2\
    \ (FASTA and QUAL), 3 (FASTQ), 4 (FASTQ and\nFASTA), or 5 (FASTQ, FASTA and QUAL)"
  type: long?
  inputBinding:
    prefix: -out_format
- id: in_out_good
  doc: "By default, the output files are created in the same directory\nas the input\
    \ file containing the sequence data with an\nadditional \"_prinseq_good_XXXX\"\
    \ in their name (where XXXX is\nreplaced by random characters to prevent overwriting\
    \ previous\nfiles). To change the output filename and location, specify the\n\
    filename using this option. The file extension will be added\nautomatically (either\
    \ .fasta, .qual, or .fastq). For paired-end\ndata, filenames contain additionally\
    \ \"_1\", \"_1_singletons\",\n\"_2\", and \"_2_singletons\" before the file extension.\
    \ Use\n\"-out_good null\" to prevent the program from generating the\noutput file(s)\
    \ for data passing all filters. Use \"-out_good\nstdout\" to write data passing\
    \ all filters to STDOUT (only for\nFASTA or FASTQ output files).\nExample: use\
    \ \"file_passed\" to generate the output file\nfile_passed.fasta in the current\
    \ directory"
  type: File?
  inputBinding:
    prefix: -out_good
- id: in_out_bad
  doc: "By default, the output files are created in the same directory\nas the input\
    \ file containing the sequence data with an\nadditional \"_prinseq_bad_XXXX\"\
    \ in their name (where XXXX is\nreplaced by random characters to prevent overwriting\
    \ previous\nfiles). To change the output filename and location, specify the\n\
    filename using this option. The file extension will be added\nautomatically (either\
    \ .fasta, .qual, or .fastq). For paired-end\ndata, filenames contain additionally\
    \ \"_1\" and \"_2\" before the\nfile extension. Use \"-out_bad null\" to prevent\
    \ the program from\ngenerating the output file(s) for data not passing any filter.\n\
    Use \"-out_bad stdout\" to write data not passing any filter to\nSTDOUT (only\
    \ for FASTA or FASTQ output files).\nExample: use \"file_filtered\" to generate\
    \ the output file\nfile_filtered.fasta in the current directory\nExample: \"-out_good\
    \ stdout -out_bad null\" will write data\npassing filters to STDOUT and data not\
    \ passing any filter will\nbe ignored"
  type: File?
  inputBinding:
    prefix: -out_bad
- id: in_log
  doc: "Log file to keep track of parameters, errors, etc. The log file\nname is optional.\
    \ If no file name is given, the log file name\nwill be \"inputname.log\". If the\
    \ log file already exists, new\ncontent will be added to the file."
  type: File?
  inputBinding:
    prefix: -log
- id: in_graph_data
  doc: "File that contains the necessary information to generate the\ngraphs similar\
    \ to the ones in the web version. The file name is\noptional. If no file name\
    \ is given, the file name will be\n\"inputname.gd\". If the file already exists,\
    \ new content will\noverwrite the file. Use \"-out_good null -out_bad null\" to\n\
    prevent generating any additional outputs. (See below for more\noptions related\
    \ to the graph data.)\nThe graph data can be used as input for the prinseq-graphs.pl\n\
    file to generate the PNG graph files or an HTML report file. If\nyou have trouble\
    \ installing the required prinseq-graphs.pl\nmodules or want to see an output\
    \ example report, upload the\ngraph data file at: http://edwards.sdsu.edu/prinseq/\
    \ -> Choose\n\"Get Report\""
  type: File?
  inputBinding:
    prefix: -graph_data
- id: in_graph_stats
  doc: "Use this option to select what statistics should be calculated\nand included\
    \ in the graph_data file. This is useful if you e.g.\ndo not need sequence complexity\
    \ information, which requires a\nlot of computation. Requires to have graph_data\
    \ specified.\nDefault is all selected.\nAllowed option are (separate multiple\
    \ by comma with no spaces):\nld (Length distribution), gc (GC content distribution),\
    \ qd (Base\nquality distribution), ns (Occurence of N), pt (Poly-A/T tails),\n\
    ts (Tag sequence check), aq (Assembly quality measure), de\n(Sequence duplication\
    \ - exact only), da (Sequence duplication -\nexact + 5'/3'), sc (Sequence complexity),\
    \ dn (Dinucleotide odds\nratios, includes the PCA plots)\nExample use: -graph_stats\
    \ ld,gc,qd,de"
  type: long?
  inputBinding:
    prefix: -graph_stats
- id: in_qual_no_scale
  doc: "Use this option if all your sequences are shorter than 100bp as\nthey do not\
    \ require to scale quality data to 100 data points in\nthe graph. By default,\
    \ quality scores of sequences shorter than\n100bp or longer than 100bp are fit\
    \ to 100 data points. (To\nretrieve this information and calculate the graph data\
    \ would\notherwise require to parse the data two times or store all the\nquality\
    \ data in memory.)"
  type: boolean?
  inputBinding:
    prefix: -qual_noscale
- id: in_no_qual_header
  doc: "In order to reduce the file size, this option will generate an\nempty header\
    \ line for the quality data in FASTQ files. Instead\nof +header, only the + sign\
    \ will be output. The header of the\nsequence data will be left unchanged. This\
    \ option applies to\nFASTQ output files only."
  type: boolean?
  inputBinding:
    prefix: -no_qual_header
- id: in_exact_only
  doc: "Use this option to check for exact (forward and reverse)\nduplicates only\
    \ when generating the graph data. This allows to\nkeep the memory requirements\
    \ low for large input files and is\nfaster. This option will automatically be\
    \ applied when using\n-derep options 1 and/or 4 only. Specify option -derep 1\
    \ or\n-derep 4 if you do not want to apply both at the same time."
  type: boolean?
  inputBinding:
    prefix: -exact_only
- id: in_seq_id_mappings
  doc: "Text file containing the old and new (specified with -seq_id)\nidentifiers\
    \ for later reference. This option is useful if e.g. a\nrenamed sequence has to\
    \ be identified based on the new sequence\nidentifier. The file name is optional.\
    \ If no file name is given,\nthe file name will be \"inputname_prinseq_good.ids\"\
    \ (only good\nsequences are renamed). If a file with the same name already\nexists,\
    \ new content will overwrite the old file. The text file\ncontains one sequence\
    \ identifier pair per line, separated by\ntabs (old-tab-new). Requires option\
    \ -seq_id."
  type: File?
  inputBinding:
    prefix: -seq_id_mappings
- id: in_min_len
  doc: Filter sequence shorter than min_len.
  type: long?
  inputBinding:
    prefix: -min_len
- id: in_max_len
  doc: Filter sequence longer than max_len.
  type: long?
  inputBinding:
    prefix: -max_len
- id: in_range_len
  doc: "Filter sequence by length range. Multiple range values should be\nseparated\
    \ by comma without spaces.\nExample: -range_len 50-100,250-300"
  type: long?
  inputBinding:
    prefix: -range_len
- id: in_min_gc
  doc: Filter sequence with GC content below min_gc.
  type: long?
  inputBinding:
    prefix: -min_gc
- id: in_max_gc
  doc: Filter sequence with GC content above max_gc.
  type: long?
  inputBinding:
    prefix: -max_gc
- id: in_range_gc
  doc: "Filter sequence by GC content range. Multiple range values\nshould be separated\
    \ by comma without spaces.\nExample: -range_gc 50-60,75-90"
  type: long?
  inputBinding:
    prefix: -range_gc
- id: in_min_qual_score
  doc: "Filter sequence with at least one quality score below\nmin_qual_score."
  type: long?
  inputBinding:
    prefix: -min_qual_score
- id: in_max_qual_score
  doc: "Filter sequence with at least one quality score above\nmax_qual_score."
  type: long?
  inputBinding:
    prefix: -max_qual_score
- id: in_min_qual_mean
  doc: Filter sequence with quality score mean below min_qual_mean.
  type: long?
  inputBinding:
    prefix: -min_qual_mean
- id: in_max_qual_mean
  doc: Filter sequence with quality score mean above max_qual_mean.
  type: long?
  inputBinding:
    prefix: -max_qual_mean
- id: in_ns_max_p
  doc: Filter sequence with more than ns_max_p percentage of Ns.
  type: long?
  inputBinding:
    prefix: -ns_max_p
- id: in_ns_max_n
  doc: Filter sequence with more than ns_max_n Ns.
  type: long?
  inputBinding:
    prefix: -ns_max_n
- id: in_non_iupac
  doc: Filter sequence with characters other than A, C, G, T or N.
  type: boolean?
  inputBinding:
    prefix: -noniupac
- id: in_seq_num
  doc: "Only keep the first seq_num number of sequences (that pass all\nother filters)."
  type: long?
  inputBinding:
    prefix: -seq_num
- id: in_de_rep
  doc: "Type of duplicates to filter. Allowed values are 1, 2, 3, 4 and\n5. Use integers\
    \ for multiple selections (e.g. 124 to use type 1,\n2 and 4). The order does not\
    \ matter. Option 2 and 3 will set 1\nand option 5 will set 4 as these are subsets\
    \ of the other\noption.\n1 (exact duplicate), 2 (5' duplicate), 3 (3' duplicate),\
    \ 4\n(reverse complement exact duplicate), 5 (reverse complement\n5'/3' duplicate)"
  type: long?
  inputBinding:
    prefix: -derep
- id: in_de_rep_min
  doc: "This option specifies the number of allowed duplicates. If you\nwant to remove\
    \ sequence duplicates that occur more than x times,\nthen you would specify x+1\
    \ as the -derep_min values. For\nexamples, to remove sequences that occur more\
    \ than 5 times, you\nwould specify -derep_min 6. This option can only be used\
    \ in\ncombination with -derep 1 and/or 4 (forward and/or reverse exact\nduplicates).\
    \ [default : 2]"
  type: long?
  inputBinding:
    prefix: -derep_min
- id: in_lc_method
  doc: "Method to filter low complexity sequences. The current options\nare \"dust\"\
    \ and \"entropy\". Use \"-lc_method dust\" to calculate the\ncomplexity using\
    \ the dust method."
  type: string?
  inputBinding:
    prefix: -lc_method
- id: in_lc_threshold
  doc: "The threshold value (between 0 and 100) used to filter sequences\nby sequence\
    \ complexity. The dust method uses this as maximum\nallowed score and the entropy\
    \ method as minimum allowed value."
  type: long?
  inputBinding:
    prefix: -lc_threshold
- id: in_custom_params
  doc: "Can be used to specify additional filters. The current set of\npossible rules\
    \ is limited and has to follow the specifications\nbelow. The custom parameters\
    \ have to be specified within quotes\n(either ' or \").\nPlease separate parameter\
    \ values with a space and separate new\nparameter sets with semicolon (;). Parameters\
    \ are defined by two\nvalues: (1) the pattern (any combination of the letters\n\
    \"ACGTN\"), (2) the number of repeats or percentage of occurence\nPercentage values\
    \ are defined by a number followed by the %-sign\n(without space). If no %-sign\
    \ is given, it is assumed that the\ngiven number specifies the number of repeats\
    \ of the pattern.\nExamples: \"AAT 10\" (filters out sequences containing\nAATAATAATAATAATAATAATAATAATAAT\
    \ anywhere in the sequence), \"T\n70%\" (filters out sequences with more than\
    \ 70% Ts in the\nsequence), \"A 15\" (filters out sequences containing\nAAAAAAAAAAAAAAA\
    \ anywhere in the sequence), \"AAT 10;T 70%;A 15\"\n(apply all three filters)"
  type: long?
  inputBinding:
    prefix: -custom_params
- id: in_trim_to_len
  doc: "Trim all sequence from the 3'-end to result in sequence with\nthis length."
  type: long?
  inputBinding:
    prefix: -trim_to_len
- id: in_trim_left
  doc: Trim sequence at the 5'-end by trim_left positions.
  type: long?
  inputBinding:
    prefix: -trim_left
- id: in_trim_right
  doc: Trim sequence at the 3'-end by trim_right positions.
  type: long?
  inputBinding:
    prefix: -trim_right
- id: in_trim_left_p
  doc: "Trim sequence at the 5'-end by trim_left_p percentage of read\nlength. The\
    \ trim length is rounded towards the lower integer\n(e.g. 143.6 is rounded to\
    \ 143 positions). Use an integer between\n1 and 100 for the percentage value."
  type: long?
  inputBinding:
    prefix: -trim_left_p
- id: in_trim_right_p
  doc: "Trim sequence at the 3'-end by trim_right_p percentage of read\nlength. The\
    \ trim length is rounded towards the lower integer\n(e.g. 143.6 is rounded to\
    \ 143 positions). Use an integer between\n1 and 100 for the percentage value."
  type: long?
  inputBinding:
    prefix: -trim_right_p
- id: in_trim_tail_left
  doc: "Trim poly-A/T tail with a minimum length of trim_tail_left at\nthe 5'-end."
  type: long?
  inputBinding:
    prefix: -trim_tail_left
- id: in_trim_tail_right
  doc: "Trim poly-A/T tail with a minimum length of trim_tail_right at\nthe 3'-end."
  type: long?
  inputBinding:
    prefix: -trim_tail_right
- id: in_trim_ns_left
  doc: "Trim poly-N tail with a minimum length of trim_ns_left at the\n5'-end."
  type: long?
  inputBinding:
    prefix: -trim_ns_left
- id: in_trim_ns_right
  doc: "Trim poly-N tail with a minimum length of trim_ns_right at the\n3'-end."
  type: long?
  inputBinding:
    prefix: -trim_ns_right
- id: in_trim_qual_left
  doc: "Trim sequence by quality score from the 5'-end with this\nthreshold score."
  type: long?
  inputBinding:
    prefix: -trim_qual_left
- id: in_trim_qual_right
  doc: "Trim sequence by quality score from the 3'-end with this\nthreshold score."
  type: long?
  inputBinding:
    prefix: -trim_qual_right
- id: in_trim_qual_type
  doc: "Type of quality score calculation to use. Allowed options are\nmin, mean,\
    \ max and sum. [default: min]"
  type: long?
  inputBinding:
    prefix: -trim_qual_type
- id: in_trim_qual_rule
  doc: "Rule to use to compare quality score to calculated value.\nAllowed options\
    \ are lt (less than), gt (greater than) and et\n(equal to). [default: lt]"
  type: string?
  inputBinding:
    prefix: -trim_qual_rule
- id: in_trim_qual_window
  doc: "The sliding window size used to calculate quality score by type.\nTo stop\
    \ at the first base that fails the rule defined, use a\nwindow size of 1. [default:\
    \ 1]"
  type: long?
  inputBinding:
    prefix: -trim_qual_window
- id: in_trim_qual_step
  doc: "Step size used to move the sliding window. To move the window\nover all quality\
    \ scores without missing any, the step size\nshould be less or equal to the window\
    \ size. [default: 1]"
  type: long?
  inputBinding:
    prefix: -trim_qual_step
- id: in_seq_case
  doc: "Changes sequence character case to upper or lower case. Allowed\noptions are\
    \ \"upper\" and \"lower\". Use this option to remove\nsoft-masking from your sequences."
  type: string?
  inputBinding:
    prefix: -seq_case
- id: in_dna_rna
  doc: "Convert sequence between DNA and RNA. Allowed options are \"dna\"\n(convert\
    \ from RNA to DNA) and \"rna\" (convert from DNA to RNA)."
  type: string?
  inputBinding:
    prefix: -dna_rna
- id: in_line_width
  doc: "Sequence characters per line. Use 0 if you want each sequence in\na single\
    \ line. Use 80 for line breaks every 80 characters. Note\nthat this option only\
    \ applies to FASTA output files, since FASTQ\nfiles store sequences without additional\
    \ line breaks. [default:\n60]"
  type: long?
  inputBinding:
    prefix: -line_width
- id: in_rm_header
  doc: "Remove the sequence header. This includes everything after the\nsequence identifier\
    \ (which is kept unchanged)."
  type: boolean?
  inputBinding:
    prefix: -rm_header
- id: in_seq_id
  doc: "Rename the sequence identifier. A counter is added to each\nidentifier to\
    \ assure its uniqueness. Use option -seq_id_mappings\nto generate a file containing\
    \ the old and new identifiers for\nlater reference.\nExample: \"mySeq_10\" will\
    \ generate the IDs (in FASTA format)\n>mySeq_101, >mySeq_102, >mySeq_103, ..."
  type: File?
  inputBinding:
    prefix: -seq_id
- id: in_stats_len
  doc: "Outputs minimum (min), maximum (max), range (range), mean\n(mean), standard\
    \ deviation (stddev), mode (mode) and mode value\n(modeval), and median (median)\
    \ for read length."
  type: boolean?
  inputBinding:
    prefix: -stats_len
- id: in_stats_din_uc
  doc: "Outputs the dinucleotide odds ratio for AA/TT (aatt), AC/GT\n(acgt), AG/CT\
    \ (agct), AT (at), CA/TG (catg), CC/GG (ccgg), CG\n(cg), GA/TC (gatc), GC (gc)\
    \ and TA (ta)."
  type: boolean?
  inputBinding:
    prefix: -stats_dinuc
- id: in_stats_tag
  doc: "Outputs the probability of a tag sequence at the 5'-end (prob5)\nand 3'-end\
    \ (prob3) in percentage (0..100). Provides the number\nof predefined MIDs (midnum)\
    \ and the MID sequences (midseq,\nseparated by comma, only provided if midnum\
    \ > 0) that occur in\nmore than 34/100 (approx. 3%) of the reads."
  type: boolean?
  inputBinding:
    prefix: -stats_tag
- id: in_stats_dupl
  doc: "Outputs the number of exact duplicates (exact), 5' duplicates\n(5), 3' duplicates\
    \ (3), exact duplicates with reverse\ncomplements (exactrevcom) and 5'/3' duplicates\
    \ with reverse\ncomplements (revcomp), and total number of duplicates (total).\n\
    The maximum number of duplicates is given under the value name\nwith an additional\
    \ \"maxd\" (e.g. exactmaxd or 5maxd)."
  type: boolean?
  inputBinding:
    prefix: -stats_dupl
- id: in_stats_ns
  doc: "Outputs the number of reads with ambiguous base N (seqswithn),\nthe maximum\
    \ number of Ns per read (maxn) and the maximum\npercentage of Ns per read (maxp).\
    \ The maxn and maxp value are\nnot necessary from the same sequence."
  type: boolean?
  inputBinding:
    prefix: -stats_ns
- id: in_stats_assembly
  doc: "Outputs the N50, N90, etc contig sizes. The Nxx contig size is a\nweighted\
    \ median that is defined as the length of the smallest\ncontig C in the sorted\
    \ list of all contigs where the cumulative\nlength from the largest contig to\
    \ contig C is at least xx% of\nthe total length (sum of contig lengths)."
  type: boolean?
  inputBinding:
    prefix: -stats_assembly
- id: in_stats_all
  doc: Outputs all available summary statistics.
  type: boolean?
  inputBinding:
    prefix: -stats_all
- id: in_stats_info
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -stats_info
- id: in_h
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -h
- id: in_tabs_dot
  doc: If you specify any statistic option, no other ouput will be
  type: string
  inputBinding:
    position: 0
- id: in_option_dot
  doc: -stats_info
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
- prinseq-lite.pl
