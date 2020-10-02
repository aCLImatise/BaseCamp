version 1.0

task Prinseqlitepl {
  input {
    Boolean? man
    Boolean? version
    Boolean? verbose
    File? fast_q
    File? fast_a
    File? qual
    File? fast_q_two
    File? fast_a_two
    File? params
    Boolean? sione_three
    Boolean? phred_six_four
    Boolean? aa
    Int? out_format
    File? out_good
    File? out_bad
    File? log
    File? graph_data
    Int? graph_stats
    Boolean? qual_no_scale
    Boolean? no_qual_header
    Boolean? exact_only
    File? seq_id_mappings
    Int? min_len
    Int? max_len
    Int? range_len
    Int? min_gc
    Int? max_gc
    Int? range_gc
    Int? min_qual_score
    Int? max_qual_score
    Int? min_qual_mean
    Int? max_qual_mean
    Int? ns_max_p
    Int? ns_max_n
    Boolean? non_iupac
    Int? seq_num
    Int? de_rep
    Int? de_rep_min
    String? lc_method
    Int? lc_threshold
    Int? custom_params
    Int? trim_to_len
    Int? trim_left
    Int? trim_right
    Int? trim_left_p
    Int? trim_right_p
    Int? trim_tail_left
    Int? trim_tail_right
    Int? trim_ns_left
    Int? trim_ns_right
    Int? trim_qual_left
    Int? trim_qual_right
    Int? trim_qual_type
    String? trim_qual_rule
    Int? trim_qual_window
    Int? trim_qual_step
    String? seq_case
    String? dna_rna
    Int? line_width
    Boolean? rm_header
    File? seq_id
    Boolean? stats_len
    Boolean? stats_din_uc
    Boolean? stats_tag
    Boolean? stats_dupl
    Boolean? stats_ns
    Boolean? stats_assembly
    Boolean? stats_all
    Boolean? stats_info
    Boolean? h
    String tabs_dot
  }
  command <<<
    prinseq_lite_pl \
      ~{tabs_dot} \
      ~{if (man) then "-man" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if defined(fast_q) then ("-fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(qual) then ("-qual " +  '"' + qual + '"') else ""} \
      ~{if defined(fast_q_two) then ("-fastq2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if defined(fast_a_two) then ("-fasta2 " +  '"' + fast_a_two + '"') else ""} \
      ~{if defined(params) then ("-params " +  '"' + params + '"') else ""} \
      ~{if (sione_three) then "-si13" else ""} \
      ~{if (phred_six_four) then "-phred64" else ""} \
      ~{if (aa) then "-aa" else ""} \
      ~{if defined(out_format) then ("-out_format " +  '"' + out_format + '"') else ""} \
      ~{if defined(out_good) then ("-out_good " +  '"' + out_good + '"') else ""} \
      ~{if defined(out_bad) then ("-out_bad " +  '"' + out_bad + '"') else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if defined(graph_data) then ("-graph_data " +  '"' + graph_data + '"') else ""} \
      ~{if defined(graph_stats) then ("-graph_stats " +  '"' + graph_stats + '"') else ""} \
      ~{if (qual_no_scale) then "-qual_noscale" else ""} \
      ~{if (no_qual_header) then "-no_qual_header" else ""} \
      ~{if (exact_only) then "-exact_only" else ""} \
      ~{if defined(seq_id_mappings) then ("-seq_id_mappings " +  '"' + seq_id_mappings + '"') else ""} \
      ~{if defined(min_len) then ("-min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("-max_len " +  '"' + max_len + '"') else ""} \
      ~{if defined(range_len) then ("-range_len " +  '"' + range_len + '"') else ""} \
      ~{if defined(min_gc) then ("-min_gc " +  '"' + min_gc + '"') else ""} \
      ~{if defined(max_gc) then ("-max_gc " +  '"' + max_gc + '"') else ""} \
      ~{if defined(range_gc) then ("-range_gc " +  '"' + range_gc + '"') else ""} \
      ~{if defined(min_qual_score) then ("-min_qual_score " +  '"' + min_qual_score + '"') else ""} \
      ~{if defined(max_qual_score) then ("-max_qual_score " +  '"' + max_qual_score + '"') else ""} \
      ~{if defined(min_qual_mean) then ("-min_qual_mean " +  '"' + min_qual_mean + '"') else ""} \
      ~{if defined(max_qual_mean) then ("-max_qual_mean " +  '"' + max_qual_mean + '"') else ""} \
      ~{if defined(ns_max_p) then ("-ns_max_p " +  '"' + ns_max_p + '"') else ""} \
      ~{if defined(ns_max_n) then ("-ns_max_n " +  '"' + ns_max_n + '"') else ""} \
      ~{if (non_iupac) then "-noniupac" else ""} \
      ~{if defined(seq_num) then ("-seq_num " +  '"' + seq_num + '"') else ""} \
      ~{if defined(de_rep) then ("-derep " +  '"' + de_rep + '"') else ""} \
      ~{if defined(de_rep_min) then ("-derep_min " +  '"' + de_rep_min + '"') else ""} \
      ~{if defined(lc_method) then ("-lc_method " +  '"' + lc_method + '"') else ""} \
      ~{if defined(lc_threshold) then ("-lc_threshold " +  '"' + lc_threshold + '"') else ""} \
      ~{if defined(custom_params) then ("-custom_params " +  '"' + custom_params + '"') else ""} \
      ~{if defined(trim_to_len) then ("-trim_to_len " +  '"' + trim_to_len + '"') else ""} \
      ~{if defined(trim_left) then ("-trim_left " +  '"' + trim_left + '"') else ""} \
      ~{if defined(trim_right) then ("-trim_right " +  '"' + trim_right + '"') else ""} \
      ~{if defined(trim_left_p) then ("-trim_left_p " +  '"' + trim_left_p + '"') else ""} \
      ~{if defined(trim_right_p) then ("-trim_right_p " +  '"' + trim_right_p + '"') else ""} \
      ~{if defined(trim_tail_left) then ("-trim_tail_left " +  '"' + trim_tail_left + '"') else ""} \
      ~{if defined(trim_tail_right) then ("-trim_tail_right " +  '"' + trim_tail_right + '"') else ""} \
      ~{if defined(trim_ns_left) then ("-trim_ns_left " +  '"' + trim_ns_left + '"') else ""} \
      ~{if defined(trim_ns_right) then ("-trim_ns_right " +  '"' + trim_ns_right + '"') else ""} \
      ~{if defined(trim_qual_left) then ("-trim_qual_left " +  '"' + trim_qual_left + '"') else ""} \
      ~{if defined(trim_qual_right) then ("-trim_qual_right " +  '"' + trim_qual_right + '"') else ""} \
      ~{if defined(trim_qual_type) then ("-trim_qual_type " +  '"' + trim_qual_type + '"') else ""} \
      ~{if defined(trim_qual_rule) then ("-trim_qual_rule " +  '"' + trim_qual_rule + '"') else ""} \
      ~{if defined(trim_qual_window) then ("-trim_qual_window " +  '"' + trim_qual_window + '"') else ""} \
      ~{if defined(trim_qual_step) then ("-trim_qual_step " +  '"' + trim_qual_step + '"') else ""} \
      ~{if defined(seq_case) then ("-seq_case " +  '"' + seq_case + '"') else ""} \
      ~{if defined(dna_rna) then ("-dna_rna " +  '"' + dna_rna + '"') else ""} \
      ~{if defined(line_width) then ("-line_width " +  '"' + line_width + '"') else ""} \
      ~{if (rm_header) then "-rm_header" else ""} \
      ~{if defined(seq_id) then ("-seq_id " +  '"' + seq_id + '"') else ""} \
      ~{if (stats_len) then "-stats_len" else ""} \
      ~{if (stats_din_uc) then "-stats_dinuc" else ""} \
      ~{if (stats_tag) then "-stats_tag" else ""} \
      ~{if (stats_dupl) then "-stats_dupl" else ""} \
      ~{if (stats_ns) then "-stats_ns" else ""} \
      ~{if (stats_assembly) then "-stats_assembly" else ""} \
      ~{if (stats_all) then "-stats_all" else ""} \
      ~{if (stats_info) then "-stats_info" else ""} \
      ~{if (h) then "-h" else ""}
  >>>
  parameter_meta {
    man: "Print the full documentation; ignore other arguments."
    version: "Print program version; ignore other arguments."
    verbose: "Prints status and info messages during processing."
    fast_q: "Input file in FASTQ format that contains the sequence and\\nquality data. Use stdin instead of a file name to read from\\nSTDIN (-fasta stdin). This can be useful to process compressed\\nfiles using Unix pipes."
    fast_a: "Input file in FASTA format that contains the sequence data. Use\\nstdin instead of a file name to read from STDIN (-fastq stdin).\\nThis can be useful to process compressed files using Unix pipes."
    qual: "Input file in QUAL format that contains the quality data."
    fast_q_two: "For paired-end data only. Input file in FASTQ format that\\ncontains the sequence and quality data. The sequence identifiers\\nfor two matching paired-end sequences in separate files can be\\nmarked by /1 and /2, or _L and _R, or _left and _right, or must\\nhave the exact same identifier in both input files. The input\\nsequences must be sorted by their sequence identifiers.\\nSingletons are allowed in the input files."
    fast_a_two: "For paired-end data only. Input file in FASTA format that\\ncontains the sequence data. The sequence identifiers for two\\nmatching paired-end sequences in separate files can be marked by\\n/1 and /2, or _L and _R, or _left and _right, or must have the\\nexact same identifier in both input files. The input sequences\\nmust be sorted by their sequence identifiers. Singletons are\\nallowed in the input files."
    params: "Input file in text format that contains PRINSEQ parameters. Each\\nparameter should be specified on a new line and arguments should\\nbe separated by spaces or tabs. Comments can be specified on\\nlines starting with the # sign. Can be combined with command\\nline parameters. Parameters specified on the command line will\\noverwrite the arguments in the file (if any)."
    sione_three: "This option was replaced by option -phred64."
    phred_six_four: "Quality data in FASTQ file is in Phred+64 format\\n(http://en.wikipedia.org/wiki/FASTQ_format#Encoding). Not\\nrequired for Illumina 1.8+, Sanger, Roche/454, Ion Torrent,\\nPacBio data."
    aa: "Input is amino acid (protein) sequences instead of nucleic acid\\n(DNA or RNA) sequences. Allowed amino acid characters:\\nABCDEFGHIKLMNOPQRSTUVWYZXabcdefghiklmmopqrstuvwyzx*- and allowed\\nnucleic acid characters: ACGTURYKMSWBDHVNXacgturykmswbdhvnx-\\nThe following options are ignored for -aa:\\nstats_dinuc,stats_tag,stats_ns,dna_rna"
    out_format: "To change the output format, use one of the following options.\\nIf not defined, the output format will be the same as the input\\nformat.\\n1 (FASTA only), 2 (FASTA and QUAL), 3 (FASTQ), 4 (FASTQ and\\nFASTA), or 5 (FASTQ, FASTA and QUAL)"
    out_good: "By default, the output files are created in the same directory\\nas the input file containing the sequence data with an\\nadditional \\\"_prinseq_good_XXXX\\\" in their name (where XXXX is\\nreplaced by random characters to prevent overwriting previous\\nfiles). To change the output filename and location, specify the\\nfilename using this option. The file extension will be added\\nautomatically (either .fasta, .qual, or .fastq). For paired-end\\ndata, filenames contain additionally \\\"_1\\\", \\\"_1_singletons\\\",\\n\\\"_2\\\", and \\\"_2_singletons\\\" before the file extension. Use\\n\\\"-out_good null\\\" to prevent the program from generating the\\noutput file(s) for data passing all filters. Use \\\"-out_good\\nstdout\\\" to write data passing all filters to STDOUT (only for\\nFASTA or FASTQ output files).\\nExample: use \\\"file_passed\\\" to generate the output file\\nfile_passed.fasta in the current directory"
    out_bad: "By default, the output files are created in the same directory\\nas the input file containing the sequence data with an\\nadditional \\\"_prinseq_bad_XXXX\\\" in their name (where XXXX is\\nreplaced by random characters to prevent overwriting previous\\nfiles). To change the output filename and location, specify the\\nfilename using this option. The file extension will be added\\nautomatically (either .fasta, .qual, or .fastq). For paired-end\\ndata, filenames contain additionally \\\"_1\\\" and \\\"_2\\\" before the\\nfile extension. Use \\\"-out_bad null\\\" to prevent the program from\\ngenerating the output file(s) for data not passing any filter.\\nUse \\\"-out_bad stdout\\\" to write data not passing any filter to\\nSTDOUT (only for FASTA or FASTQ output files).\\nExample: use \\\"file_filtered\\\" to generate the output file\\nfile_filtered.fasta in the current directory\\nExample: \\\"-out_good stdout -out_bad null\\\" will write data\\npassing filters to STDOUT and data not passing any filter will\\nbe ignored"
    log: "Log file to keep track of parameters, errors, etc. The log file\\nname is optional. If no file name is given, the log file name\\nwill be \\\"inputname.log\\\". If the log file already exists, new\\ncontent will be added to the file."
    graph_data: "File that contains the necessary information to generate the\\ngraphs similar to the ones in the web version. The file name is\\noptional. If no file name is given, the file name will be\\n\\\"inputname.gd\\\". If the file already exists, new content will\\noverwrite the file. Use \\\"-out_good null -out_bad null\\\" to\\nprevent generating any additional outputs. (See below for more\\noptions related to the graph data.)\\nThe graph data can be used as input for the prinseq-graphs.pl\\nfile to generate the PNG graph files or an HTML report file. If\\nyou have trouble installing the required prinseq-graphs.pl\\nmodules or want to see an output example report, upload the\\ngraph data file at: http://edwards.sdsu.edu/prinseq/ -> Choose\\n\\\"Get Report\\\""
    graph_stats: "Use this option to select what statistics should be calculated\\nand included in the graph_data file. This is useful if you e.g.\\ndo not need sequence complexity information, which requires a\\nlot of computation. Requires to have graph_data specified.\\nDefault is all selected.\\nAllowed option are (separate multiple by comma with no spaces):\\nld (Length distribution), gc (GC content distribution), qd (Base\\nquality distribution), ns (Occurence of N), pt (Poly-A/T tails),\\nts (Tag sequence check), aq (Assembly quality measure), de\\n(Sequence duplication - exact only), da (Sequence duplication -\\nexact + 5'/3'), sc (Sequence complexity), dn (Dinucleotide odds\\nratios, includes the PCA plots)\\nExample use: -graph_stats ld,gc,qd,de"
    qual_no_scale: "Use this option if all your sequences are shorter than 100bp as\\nthey do not require to scale quality data to 100 data points in\\nthe graph. By default, quality scores of sequences shorter than\\n100bp or longer than 100bp are fit to 100 data points. (To\\nretrieve this information and calculate the graph data would\\notherwise require to parse the data two times or store all the\\nquality data in memory.)"
    no_qual_header: "In order to reduce the file size, this option will generate an\\nempty header line for the quality data in FASTQ files. Instead\\nof +header, only the + sign will be output. The header of the\\nsequence data will be left unchanged. This option applies to\\nFASTQ output files only."
    exact_only: "Use this option to check for exact (forward and reverse)\\nduplicates only when generating the graph data. This allows to\\nkeep the memory requirements low for large input files and is\\nfaster. This option will automatically be applied when using\\n-derep options 1 and/or 4 only. Specify option -derep 1 or\\n-derep 4 if you do not want to apply both at the same time."
    seq_id_mappings: "Text file containing the old and new (specified with -seq_id)\\nidentifiers for later reference. This option is useful if e.g. a\\nrenamed sequence has to be identified based on the new sequence\\nidentifier. The file name is optional. If no file name is given,\\nthe file name will be \\\"inputname_prinseq_good.ids\\\" (only good\\nsequences are renamed). If a file with the same name already\\nexists, new content will overwrite the old file. The text file\\ncontains one sequence identifier pair per line, separated by\\ntabs (old-tab-new). Requires option -seq_id."
    min_len: "Filter sequence shorter than min_len."
    max_len: "Filter sequence longer than max_len."
    range_len: "Filter sequence by length range. Multiple range values should be\\nseparated by comma without spaces.\\nExample: -range_len 50-100,250-300"
    min_gc: "Filter sequence with GC content below min_gc."
    max_gc: "Filter sequence with GC content above max_gc."
    range_gc: "Filter sequence by GC content range. Multiple range values\\nshould be separated by comma without spaces.\\nExample: -range_gc 50-60,75-90"
    min_qual_score: "Filter sequence with at least one quality score below\\nmin_qual_score."
    max_qual_score: "Filter sequence with at least one quality score above\\nmax_qual_score."
    min_qual_mean: "Filter sequence with quality score mean below min_qual_mean."
    max_qual_mean: "Filter sequence with quality score mean above max_qual_mean."
    ns_max_p: "Filter sequence with more than ns_max_p percentage of Ns."
    ns_max_n: "Filter sequence with more than ns_max_n Ns."
    non_iupac: "Filter sequence with characters other than A, C, G, T or N."
    seq_num: "Only keep the first seq_num number of sequences (that pass all\\nother filters)."
    de_rep: "Type of duplicates to filter. Allowed values are 1, 2, 3, 4 and\\n5. Use integers for multiple selections (e.g. 124 to use type 1,\\n2 and 4). The order does not matter. Option 2 and 3 will set 1\\nand option 5 will set 4 as these are subsets of the other\\noption.\\n1 (exact duplicate), 2 (5' duplicate), 3 (3' duplicate), 4\\n(reverse complement exact duplicate), 5 (reverse complement\\n5'/3' duplicate)"
    de_rep_min: "This option specifies the number of allowed duplicates. If you\\nwant to remove sequence duplicates that occur more than x times,\\nthen you would specify x+1 as the -derep_min values. For\\nexamples, to remove sequences that occur more than 5 times, you\\nwould specify -derep_min 6. This option can only be used in\\ncombination with -derep 1 and/or 4 (forward and/or reverse exact\\nduplicates). [default : 2]"
    lc_method: "Method to filter low complexity sequences. The current options\\nare \\\"dust\\\" and \\\"entropy\\\". Use \\\"-lc_method dust\\\" to calculate the\\ncomplexity using the dust method."
    lc_threshold: "The threshold value (between 0 and 100) used to filter sequences\\nby sequence complexity. The dust method uses this as maximum\\nallowed score and the entropy method as minimum allowed value."
    custom_params: "Can be used to specify additional filters. The current set of\\npossible rules is limited and has to follow the specifications\\nbelow. The custom parameters have to be specified within quotes\\n(either ' or \\\").\\nPlease separate parameter values with a space and separate new\\nparameter sets with semicolon (;). Parameters are defined by two\\nvalues: (1) the pattern (any combination of the letters\\n\\\"ACGTN\\\"), (2) the number of repeats or percentage of occurence\\nPercentage values are defined by a number followed by the %-sign\\n(without space). If no %-sign is given, it is assumed that the\\ngiven number specifies the number of repeats of the pattern.\\nExamples: \\\"AAT 10\\\" (filters out sequences containing\\nAATAATAATAATAATAATAATAATAATAAT anywhere in the sequence), \\\"T\\n70%\\\" (filters out sequences with more than 70% Ts in the\\nsequence), \\\"A 15\\\" (filters out sequences containing\\nAAAAAAAAAAAAAAA anywhere in the sequence), \\\"AAT 10;T 70%;A 15\\\"\\n(apply all three filters)"
    trim_to_len: "Trim all sequence from the 3'-end to result in sequence with\\nthis length."
    trim_left: "Trim sequence at the 5'-end by trim_left positions."
    trim_right: "Trim sequence at the 3'-end by trim_right positions."
    trim_left_p: "Trim sequence at the 5'-end by trim_left_p percentage of read\\nlength. The trim length is rounded towards the lower integer\\n(e.g. 143.6 is rounded to 143 positions). Use an integer between\\n1 and 100 for the percentage value."
    trim_right_p: "Trim sequence at the 3'-end by trim_right_p percentage of read\\nlength. The trim length is rounded towards the lower integer\\n(e.g. 143.6 is rounded to 143 positions). Use an integer between\\n1 and 100 for the percentage value."
    trim_tail_left: "Trim poly-A/T tail with a minimum length of trim_tail_left at\\nthe 5'-end."
    trim_tail_right: "Trim poly-A/T tail with a minimum length of trim_tail_right at\\nthe 3'-end."
    trim_ns_left: "Trim poly-N tail with a minimum length of trim_ns_left at the\\n5'-end."
    trim_ns_right: "Trim poly-N tail with a minimum length of trim_ns_right at the\\n3'-end."
    trim_qual_left: "Trim sequence by quality score from the 5'-end with this\\nthreshold score."
    trim_qual_right: "Trim sequence by quality score from the 3'-end with this\\nthreshold score."
    trim_qual_type: "Type of quality score calculation to use. Allowed options are\\nmin, mean, max and sum. [default: min]"
    trim_qual_rule: "Rule to use to compare quality score to calculated value.\\nAllowed options are lt (less than), gt (greater than) and et\\n(equal to). [default: lt]"
    trim_qual_window: "The sliding window size used to calculate quality score by type.\\nTo stop at the first base that fails the rule defined, use a\\nwindow size of 1. [default: 1]"
    trim_qual_step: "Step size used to move the sliding window. To move the window\\nover all quality scores without missing any, the step size\\nshould be less or equal to the window size. [default: 1]"
    seq_case: "Changes sequence character case to upper or lower case. Allowed\\noptions are \\\"upper\\\" and \\\"lower\\\". Use this option to remove\\nsoft-masking from your sequences."
    dna_rna: "Convert sequence between DNA and RNA. Allowed options are \\\"dna\\\"\\n(convert from RNA to DNA) and \\\"rna\\\" (convert from DNA to RNA)."
    line_width: "Sequence characters per line. Use 0 if you want each sequence in\\na single line. Use 80 for line breaks every 80 characters. Note\\nthat this option only applies to FASTA output files, since FASTQ\\nfiles store sequences without additional line breaks. [default:\\n60]"
    rm_header: "Remove the sequence header. This includes everything after the\\nsequence identifier (which is kept unchanged)."
    seq_id: "Rename the sequence identifier. A counter is added to each\\nidentifier to assure its uniqueness. Use option -seq_id_mappings\\nto generate a file containing the old and new identifiers for\\nlater reference.\\nExample: \\\"mySeq_10\\\" will generate the IDs (in FASTA format)\\n>mySeq_101, >mySeq_102, >mySeq_103, ..."
    stats_len: "Outputs minimum (min), maximum (max), range (range), mean\\n(mean), standard deviation (stddev), mode (mode) and mode value\\n(modeval), and median (median) for read length."
    stats_din_uc: "Outputs the dinucleotide odds ratio for AA/TT (aatt), AC/GT\\n(acgt), AG/CT (agct), AT (at), CA/TG (catg), CC/GG (ccgg), CG\\n(cg), GA/TC (gatc), GC (gc) and TA (ta)."
    stats_tag: "Outputs the probability of a tag sequence at the 5'-end (prob5)\\nand 3'-end (prob3) in percentage (0..100). Provides the number\\nof predefined MIDs (midnum) and the MID sequences (midseq,\\nseparated by comma, only provided if midnum > 0) that occur in\\nmore than 34/100 (approx. 3%) of the reads."
    stats_dupl: "Outputs the number of exact duplicates (exact), 5' duplicates\\n(5), 3' duplicates (3), exact duplicates with reverse\\ncomplements (exactrevcom) and 5'/3' duplicates with reverse\\ncomplements (revcomp), and total number of duplicates (total).\\nThe maximum number of duplicates is given under the value name\\nwith an additional \\\"maxd\\\" (e.g. exactmaxd or 5maxd)."
    stats_ns: "Outputs the number of reads with ambiguous base N (seqswithn),\\nthe maximum number of Ns per read (maxn) and the maximum\\npercentage of Ns per read (maxp). The maxn and maxp value are\\nnot necessary from the same sequence."
    stats_assembly: "Outputs the N50, N90, etc contig sizes. The Nxx contig size is a\\nweighted median that is defined as the length of the smallest\\ncontig C in the sorted list of all contigs where the cumulative\\nlength from the largest contig to contig C is at least xx% of\\nthe total length (sum of contig lengths)."
    stats_all: "Outputs all available summary statistics."
    stats_info: ""
    h: ""
    tabs_dot: "If you specify any statistic option, no other ouput will be"
  }
  output {
    File out_stdout = stdout()
  }
}