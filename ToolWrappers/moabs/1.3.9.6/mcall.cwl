class: CommandLineTool
id: mcall.cwl
inputs:
- id: in_arg_specify_names
  doc: "[ --mappedFiles ] arg           Specify the names of RRBS/WGBS alignment\n\
    files for methylation calling. Multiple\nfiles can be provided to combine them(eg.\n\
    lanes or replicates) into a single track;"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_sample_name
  doc: "If two or more mappedFiles are specifed,\nthis option generates a merged result;\n\
    Ignored for one input file;"
  type: File
  inputBinding:
    prefix: --sampleName
- id: in_output_dir
  doc: The name of the output directory;
  type: Directory
  inputBinding:
    prefix: --outputDir
- id: in_web_output_dir
  doc: "The name of the web-accessible output\ndirectory for UCSC Genome Browser tracks;"
  type: Directory
  inputBinding:
    prefix: --webOutputDir
- id: in_arg_ucsc_genome
  doc: "[ --genome ] arg                The UCSC Genome Browser identifier of\nsource\
    \ genome assembly; mm9 for example;"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_arg_reference_dna
  doc: "[ --reference ] arg             Reference DNA fasta file; It's required if\n\
    CHG methylation is wanted;"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_cytosine_min_score
  doc: "(=20)       Threshold for cytosine quality score\n(default: 20). Discard the\
    \ base if\nthreshold is not reached;"
  type: long
  inputBinding:
    prefix: --cytosineMinScore
- id: in_nextbase_min_score
  doc: "(=3)        Threshold for the next base quality\nscore(default: 3,ie, better\
    \ than B or #);\nPossible values: -1 makes the program not\nto check if next base\
    \ matches reference;\nany positive integer or zero makes the\nprogram to check\
    \ if next base matches\nreference and reaches this score\nthreshold;"
  type: long
  inputBinding:
    prefix: --nextBaseMinScore
- id: in_quality_score_base
  doc: "(=0)        Specify quality score system: 0 means\nautodetection; Sanger=>33;Solexa=>59;Illum\n\
    ina=>64; See wiki FASTQ_format for\ndetails;"
  type: long
  inputBinding:
    prefix: --qualityScoreBase
- id: in_trim_wgb_send_repair_pe_two_seq
  doc: "(=3) How to trim end-repair sequence from begin\nof +-/-- reads from Pair\
    \ End WGBS\nSequencing; 0: no trim; n(positive\ninteger): trim n bases from begin\
    \ of +-/--\nreads; -2: model determined n; -1: trim\nfrom beginning to before\
    \ 1st methylated C;\nSuggest 3; n>readLen is equivalent to use\nPE1 reads;"
  type: long
  inputBinding:
    prefix: --trimWGBSEndRepairPE2Seq
- id: in_trim_wgb_send_repair_pe_one_seq
  doc: "(=3) How to trim end-repair sequence from end\nof ++/-+ reads from Pair End\
    \ WGBS\nSequencing; 0: no trim; n(positive\ninteger): trim n + NM bases from end\
    \ of\n++/-+ reads if fragSize <= maxReadLen; -2:\nmodel determined n; Suggest\
    \ 3;"
  type: long
  inputBinding:
    prefix: --trimWGBSEndRepairPE1Seq
- id: in_process_pe_overlap_seq
  doc: "(=1)     1/0 makes the program count once/twice the\noverlap seq of two pairs;"
  type: long
  inputBinding:
    prefix: --processPEOverlapSeq
- id: in_trim_rrb_send_repair_seq
  doc: "(=2)    How to trim end-repair sequence for RRBS\nreads; RRBS or WGBS protocol\
    \ can be\nautomatically detected; 0: no trim; 2:\ntrim the last CG at exactly\
    \ end of ++/-+\nreads and trim the first CG at exactly\nbegin of +-/-- reads like\
    \ the WGBS\nsituation;"
  type: long
  inputBinding:
    prefix: --trimRRBSEndRepairSeq
- id: in_skip_random_chrom
  doc: "(=1)         Specify whether to skip random and hadrop\nchrom;"
  type: long
  inputBinding:
    prefix: --skipRandomChrom
- id: in_arg_requiring_samtools
  doc: "[ --requiredFlag ] arg (=0)     Requiring samtools flag; 0x2(properly\nparied),\
    \ 0x40(PE1), 0x80(PE2), 0x100(not\nunique), r=0x10(reverse); Examples: -f\n0x10\
    \ <=> +-/-+ (Right) reads; -f 0x40 <=>\n++/-+ (PE1) reads; -f 0x50 <=> -+ read;\
    \ -f\n0x90 <=> +- read;"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_min_frag_size
  doc: "(=0)             Requiring min fragment size, the 9th field\nin sam file;\
    \ Since non-properly-paired\nread has 0 at 9th field, setting this\noption is\
    \ requiring properly paired and\nlarge enough fragment size;"
  type: long
  inputBinding:
    prefix: --minFragSize
- id: in_min_mm_frag_size
  doc: "(=0)           Requiring min fragment size for multiply\nmatched read; Same\
    \ as option above but\nonly this option is only applicable to\nreads with flag\
    \ 0x100 set as 1;"
  type: long
  inputBinding:
    prefix: --minMMFragSize
- id: in_report_cpx
  doc: "(=G)               X=G generates a file for CpG methylation;\nA/C/T generates\
    \ file for CpA/CpC/CpT meth;"
  type: File
  inputBinding:
    prefix: --reportCpX
- id: in_report_chx
  doc: "(=X)               X=G generates a file for CHG methylation;\nA/C/T generates\
    \ file for CHA/CHC/CHT meth;\nThis file is large;"
  type: File
  inputBinding:
    prefix: --reportCHX
- id: in_arg_specify_turn
  doc: "[ --fullMode ] arg (=0)         Specify whether to turn on full mode.\nOff(0):\
    \ only *.G.bed, *.HG.bed and\n*_stat.txt are allowed to be generated.\nOn(1):\
    \ file *.HG.bed, *.bed, *_skip.bed,\nand *_strand.bed are forced to be\ngenerated.\
    \ Extremely large files will be\ngenerated at fullMode."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_stats_only
  doc: "(=0)               Off(0): no effect. On(1): only *_stat.txt\nis generated."
  type: long
  inputBinding:
    prefix: --statsOnly
- id: in_stat_split
  doc: "To split statistics file by chromosome\ngroups. Chromosomes in a group are\n\
    separated by `,`, and groups are separated\nby `/`. For example, `--statSplit\n\
    chr1,chr2,chr3/chrLambda`. This example\nwill generate two or three statistics\n\
    files: one for chr1,2,3; one for\nchrLambda; one for the rest of chromosomes\n\
    if existing."
  type: File
  inputBinding:
    prefix: --statSplit
- id: in_keep_temp
  doc: (=0)                Specify whether to keep temp files;
  type: long
  inputBinding:
    prefix: --keepTemp
- id: in_arg_number_threads
  doc: "[ --threads ] arg (=1)          Number of threads on all mapped file.\nSuggest\
    \ 1~8 on EACH input file depending\nRAM size and disk speed.\n"
  type: boolean
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: The name of the output directory;
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_web_output_dir
  doc: "The name of the web-accessible output\ndirectory for UCSC Genome Browser tracks;"
  type: Directory
  outputBinding:
    glob: $(inputs.in_web_output_dir)
cwlVersion: v1.1
baseCommand:
- mcall
