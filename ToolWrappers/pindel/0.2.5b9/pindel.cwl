class: CommandLineTool
id: pindel.cwl
inputs:
- id: in_f_slash_fast_a
  doc: "the reference genome sequences in fasta format\n-p/--pindel-file\nthe Pindel\
    \ input file; either this, a pindel configuration file\n(consisting of multiple\
    \ pindel filenames) or a bam configuration file\nis required\n-i/--config-file\n\
    the bam config file; either this, a pindel input file, or a pindel\nconfig file\
    \ is required. Per line: path and file name of bam, insert\nsize and sample tag.\
    \     For example: /data/tumour.bam  400  tumour\n-o/--output-prefix\nOutput prefix;"
  type: boolean
  inputBinding:
    prefix: -f/--fasta
- id: in_p_slash_pin_del_config_file
  doc: "the pindel config file, containing the names of all Pindel files that\nneed\
    \ to be sampled; either this, a bam config file or a pindel input\nfile is required.\
    \ Per line: path and file name of pindel input.\nExample: /data/tumour.txt\n-c/--chromosome\n\
    Which chr/fragment. Pindel will process reads for one chromosome each\ntime. ChrName\
    \ must be the same as in reference sequence and in read\nfile. '-c ALL' will make\
    \ Pindel loop over all chromosomes. The search\nfor indels and SVs can also be\
    \ limited to a specific region; -c\n20:10,000,000 will only look for indels and\
    \ SVs after position\n10,000,000 = [10M, end], -c 20:5,000,000-15,000,000 will\
    \ report\nindels in the range between and including the bases at position\n5,000,000\
    \ and 15,000,000 = [5M, 15M]. (default ALL)\n-h/--help\nshow the command line\
    \ options of Pindel\n-R/--RP\nsearch for discordant read-pair to improve sensitivity\
    \ (default true)\n-H/--min_distance_to_the_end\nthe minimum number of bases required\
    \ to match reference (default 8).\n-T/--number_of_threads\nthe number of threads\
    \ Pindel will use (default 1).\n-x/--max_range_index\nthe maximum size of structural\
    \ variations to be detected; the higher\nthis number, the greater the number of\
    \ SVs reported, but the\ncomputational cost and memory requirements increase,\
    \ as does the rate\nof false positives. 1=128, 2=512, 3=2,048, 4=8,092, 5=32,368,\n\
    6=129,472, 7=517,888, 8=2,071,552, 9=8,286,208. (maximum 9, default\n2)\n-w/--window_size\n\
    for saving RAM, divides the reference in bins of X million bases and\nonly analyzes\
    \ the reads that belong in the current bin, (default 5\n(=5 million))\n-e/--sequencing_error_rate\n\
    the expected fraction of sequencing errors (default 0.01)\n-E/--sensitivity\n\
    Pindel only reports reads if they can be fit around an event within a\ncertain\
    \ number of mismatches. If the fraction of sequencing errors is\n0.01, (so we'd\
    \ expect a total error rate of 0.011 since on average 1\nin 1000 bases is a SNP)\
    \ and pindel calls a deletion, but there are 4\nmismatched bases in the new fit\
    \ of the pindel read (100 bases) to the\nreference genome, Pindel would calculate\
    \ that with an error rate of\n0.01 (=0.011 including SNPs) the chance that there\
    \ are 0, 1 or 2\nmismatched bases in the reference genome is 90%. Setting -E to\
    \ .90\n(=90%) will thereforethrow away all reads with 3 or more mismatches,\n\
    even though that means that you throw away 1 in 10 valid reads.\nIncreasing this\
    \ parameter to say 0.99 will increase the sensitivity\nof pindel though you may\
    \ get more false positives, decreasing the\nparameter ensures you only get very\
    \ good matches but pindel may not\nfind as many events. (default 0.95)\n-u/--maximum_allowed_mismatch_rate\n\
    Only reads with more than this fraction of mismatches than the\nreference genome\
    \ will be considered as harboring potential SVs.\n(default 0.02)\n-n/--NM\nthe\
    \ minimum number of edit distance between reads and reference\ngenome (default\
    \ 2). reads at least NM edit distance (>= NM) will be\nrealigned\n-r/--report_inversions\n\
    report inversions (default true)\n-t/--report_duplications\nreport tandem duplications\
    \ (default true)\n-l/--report_long_insertions\nreport insertions of which the\
    \ full sequence cannot be deduced\nbecause of their length (default false)\n-k/--report_breakpoints\n\
    report breakpoints (default false)\n-s/--report_close_mapped_reads\nreport reads\
    \ of which only one end (the one closest to the mapped\nread of the paired-end\
    \ read) could be mapped. (default false)\n-S/--report_only_close_mapped_reads\n\
    do not search for SVs, only report reads of which only one end (the\none closest\
    \ to the mapped read of the paired-end read) could be\nmapped (the output file\
    \ can then be used as an input file for another\nrun of pindel, which may save\
    \ size if you need to transfer files).\n(default false)\n-I/--report_interchromosomal_events\n\
    search for interchromosomal events. Note: will require the computer\nto have at\
    \ least 4 GB of memory (default false)\n-C/--IndelCorrection\nsearch for consensus\
    \ indels to corret contigs (default false)\n-N/--NormalSamples\nTurn on germline\
    \ filtering, less sensistive and you may miss somatic\ncalls (default false)\n\
    -b/--breakdancer\nPindel is able to use calls from other SV methods such as BreakDancer\n\
    to further increase sensitivity and specificity.\nBreakDancer result or calls\
    \ from any methods must in the format:\nChrA LocA stringA ChrB LocB stringB other\n\
    -j/--include\nIf you want Pindel to process a set of regions, please provide a\
    \ bed\nfile here: chr start end\n-J/--exclude\nIf you want Pindel to skip a set\
    \ of regions, please provide a bed\nfile here: chr start end\n-a/--additional_mismatch\n\
    Pindel will only map part of a read to the reference genome if there\nare no other\
    \ candidate positions with no more than the specified\nnumber of mismatches position.\
    \ The bigger the value, the more\naccurate but less sensitive. (minimum value\
    \ 1, default value 1)\n-m/--min_perfect_match_around_BP\nat the point where the\
    \ read is split into two, there should at least\nbe this number of perfectly matching\
    \ bases between read and reference\n(default value 3)\n-v/--min_inversion_size\n\
    only report inversions greater than this number of bases (default 50)\n-d/--min_num_matched_bases\n\
    only consider reads as evidence if they map with more than X bases to\nthe reference.\
    \ (default 30)\n-B/--balance_cutoff\nthe number of bases of a SV above which a\
    \ more stringent filter is\napplied which demands that both sides of the SV are\
    \ mapped with\nsufficiently long strings of bases (default 100)\n-A/--anchor_quality\n\
    the minimal mapping quality of the reads Pindel uses as anchor If you\nonly need\
    \ high confident calls, set to 30 or higher(default 0)\n-M/--minimum_support_for_event\n\
    Pindel only calls events which have this number or more supporting\nreads (default\
    \ 1)\n-z/--input_SV_Calls_for_assembly\nA filename of a list of SV calls for assembling\
    \ breakpoints\nTypes: DEL, INS, DUP, INV, CTX and ITX\nFile format: Type chrA\
    \ posA Confidence_Range_A chrB posB\nConfidence_Range_B\nExample: DEL chr1 10000\
    \ 50 chr2 20000 100\n-g/--genotyping\ngentype variants if -i is also used.\n-Q/--output_of_breakdancer_events\n\
    If breakdancer input is used, you can specify a filename here to\nwrite the confirmed\
    \ breakdancer events with their exact breakpoints\nto The list of BreakDancer\
    \ calls with Pindel support information.\nFormat: chr   Loc_left   Loc_right \
    \  size   type   index.\nFor example, \"1      72766323        72811840      \
    \  45516   D       11970\" means the deletion\nevent chr1:72766323-72811840 of\
    \ size 45516 is reported as an event\nwith index 11970 in Pindel report of deletion.\n\
    -L/--name_of_logfile\nSpecifies a file to write Pindel's log to (default: no logfile,\
    \ log\nis written to the screen/stdout)\n-Y/--Ploidy\na file with Ploidy information\
    \ per chr for genotype. per line:\nChrName Ploidy. For example, chr1 2\n-q/--detect_DD\n\
    Flag indicating whether to detect dispersed duplications. (default:\nfalse)\n\
    /--MAX_DD_BREAKPOINT_DISTANCE\nMaximum distance between dispersed duplication\
    \ breakpoints to assume\nthey refer to the same event. (default: 350)\n/--MAX_DISTANCE_CLUSTER_READS\n\
    Maximum distance between reads for them to provide evidence for a\nsingle breakpoint\
    \ for dispersed duplications. (default: 100)\n/--MIN_DD_CLUSTER_SIZE\nMinimum\
    \ number of reads needed for calling a breakpoint for dispersed\nduplications.\
    \ (default: 3)\n/--MIN_DD_BREAKPOINT_SUPPORT\nMinimum number of split reads for\
    \ calling an exact breakpoint for\ndispersed duplications. (default: 3)\n/--MIN_DD_MAP_DISTANCE\n\
    Minimum mapping distance of read pairs for them to be considered\ndiscordant.\
    \ (default: 8000)\n/--DD_REPORT_DUPLICATION_READS\nReport discordant sequences\
    \ and positions for mates of reads mapping\ninside dispersed duplications. (default:\
    \ false)\n"
  type: boolean
  inputBinding:
    prefix: -P/--pindel-config-file
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pindel
