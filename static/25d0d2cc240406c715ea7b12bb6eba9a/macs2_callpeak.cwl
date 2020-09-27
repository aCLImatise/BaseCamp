class: CommandLineTool
id: macs2_callpeak.cwl
inputs:
- id: in_treatment
  doc: "ChIP-seq treatment file. If multiple files are given\nas '-t A B C', then\
    \ they will all be read and pooled\ntogether. REQUIRED."
  type: File[]
  inputBinding:
    prefix: --treatment
- id: in_control_file_multiple
  doc: "[CFILE [CFILE ...]], --control [CFILE [CFILE ...]]\nControl file. If multiple\
    \ files are given as '-c A B\nC', they will be pooled to estimate ChIP-seq\nbackground\
    \ noise."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_format
  doc: "Format of tag file, \"AUTO\", \"BED\" or \"ELAND\" or\n\"ELANDMULTI\" or \"\
    ELANDEXPORT\" or \"SAM\" or \"BAM\" or\n\"BOWTIE\" or \"BAMPE\" or \"BEDPE\".\
    \ The default AUTO\noption will let MACS decide which format (except for\nBAMPE\
    \ and BEDPE which should be implicitly set) the\nfile is. Please check the definition\
    \ in README. Please\nnote that if the format is set as BAMPE or BEDPE,\nMACS2\
    \ will call its special Paired-end mode to call\npeaks by piling up the actual\
    \ ChIPed fragments defined\nby both aligned ends, instead of predicting the\n\
    fragment size first and extending reads. Also please\nnote that the BEDPE only\
    \ contains three columns, and\nis NOT the same BEDPE format used by BEDTOOLS.\n\
    DEFAULT: \"AUTO\""
  type: string
  inputBinding:
    prefix: --format
- id: in_g_size
  doc: "Effective genome size. It can be 1.0e+9 or 1000000000,\nor shortcuts:'hs'\
    \ for human (2.7e9), 'mm' for mouse\n(1.87e9), 'ce' for C. elegans (9e7) and 'dm'\
    \ for\nfruitfly (1.2e8), Default:hs"
  type: long
  inputBinding:
    prefix: --gsize
- id: in_t_size
  doc: "Tag size/read length. This will override the auto\ndetected tag size. DEFAULT:\
    \ Not set"
  type: long
  inputBinding:
    prefix: --tsize
- id: in_keep_dup
  doc: "It controls the behavior towards duplicate tags at the\nexact same location\
    \ -- the same coordination and the\nsame strand. The 'auto' option makes MACS\
    \ calculate\nthe maximum tags at the exact same location based on\nbinomal distribution\
    \ using 1e-5 as pvalue cutoff; and\nthe 'all' option keeps every tags. If an integer\
    \ is\ngiven, at most this number of tags will be kept at the\nsame location. Note,\
    \ if you've used samtools or picard\nto flag reads as 'PCR/Optical duplicate'\
    \ in bit 1024,\nMACS2 will still read them although the reads may be\ndecided\
    \ by MACS2 as duplicate later. If you plan to\nrely on samtools/picard/any other\
    \ tool to filter\nduplicates, please remove those duplicate reads and\nsave a\
    \ new alignment file then ask MACS2 to keep all\nby '--keep-dup all'. The default\
    \ is to keep one tag at\nthe same location. Default: 1"
  type: long
  inputBinding:
    prefix: --keep-dup
- id: in_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_name
  doc: "Experiment name, which will be used to generate output\nfile names. DEFAULT:\
    \ \"NA\""
  type: File
  inputBinding:
    prefix: --name
- id: in_bdg
  doc: "Whether or not to save extended fragment pileup, and\nlocal lambda tracks\
    \ (two files) at every bp into a\nbedGraph file. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --bdg
- id: in_verbose
  doc: "Set verbose level of runtime message. 0: only show\ncritical message, 1: show\
    \ additional warning message,\n2: show process information, 3: show debug messages.\n\
    DEFAULT:2"
  type: long
  inputBinding:
    prefix: --verbose
- id: in_track_line
  doc: "Tells MACS to include trackline with bedGraph files.\nTo include this trackline\
    \ while displaying bedGraph at\nUCSC genome browser, can show name and description\
    \ of\nthe file as well. However my suggestion is to convert\nbedGraph to bigWig,\
    \ then show the smaller and faster\nbinary bigWig file at UCSC genome browser,\
    \ as well as\ndownstream analysis. Require -B to be set. Default:\nNot include\
    \ trackline."
  type: boolean
  inputBinding:
    prefix: --trackline
- id: in_sp_mr
  doc: "If True, MACS will SAVE signal per million reads for\nfragment pileup profiles.\
    \ It won't interfere with\ncomputing pvalue/qvalue during peak calling, since\n\
    internally MACS2 keeps using the raw pileup and\nscaling factors between larger\
    \ and smaller dataset to\ncalculate statistics measurements. If you plan to use\n\
    the signal output in bedGraph to call peaks using\nbdgcmp and bdgpeakcall, you\
    \ shouldn't use this option\nbecause you will end up with different results.\n\
    However, this option is recommended for displaying\nnormalized pileup tracks across\
    \ many datasets. Require\n-B to be set. Default: False"
  type: boolean
  inputBinding:
    prefix: --SPMR
- id: in_no_model
  doc: "Whether or not to build the shifting model. If True,\nMACS will not build\
    \ model. by default it means\nshifting size = 100, try to set extsize to change\
    \ it.\nIt's highly recommended that while you have many\ndatasets to process and\
    \ you plan to compare different\nconditions, aka differential calling, use both\n\
    'nomodel' and 'extsize' to make signal files from\ndifferent datasets comparable.\
    \ DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --nomodel
- id: in_shift
  doc: "(NOT the legacy --shiftsize option!) The arbitrary\nshift in bp. Use discretion\
    \ while setting it other\nthan default value. When NOMODEL is set, MACS will use\n\
    this value to move cutting ends (5') towards 5'->3'\ndirection then apply EXTSIZE\
    \ to extend them to\nfragments. When this value is negative, ends will be\nmoved\
    \ toward 3'->5' direction. Recommended to keep it\nas default 0 for ChIP-Seq datasets,\
    \ or -1 * half of\nEXTSIZE together with EXTSIZE option for detecting\nenriched\
    \ cutting loci such as certain DNAseI-Seq\ndatasets. Note, you can't set values\
    \ other than 0 if\nformat is BAMPE or BEDPE for paired-end data. DEFAULT:\n0."
  type: long
  inputBinding:
    prefix: --shift
- id: in_ext_size
  doc: "The arbitrary extension size in bp. When nomodel is\ntrue, MACS will use this\
    \ value as fragment size to\nextend each read towards 3' end, then pile them up.\n\
    It's exactly twice the number of obsolete SHIFTSIZE.\nIn previous language, each\
    \ read is moved 5'->3'\ndirection to middle of fragment by 1/2 d, then\nextended\
    \ to both direction with 1/2 d. This is\nequivalent to say each read is extended\
    \ towards 5'->3'\ninto a d size fragment. DEFAULT: 200. EXTSIZE and\nSHIFT can\
    \ be combined when necessary. Check SHIFT\noption."
  type: long
  inputBinding:
    prefix: --extsize
- id: in_bw
  doc: "Band width for picking regions to compute fragment\nsize. This value is only\
    \ used while building the\nshifting model. Tweaking this is not recommended.\n\
    DEFAULT: 300"
  type: long
  inputBinding:
    prefix: --bw
- id: in_d_min
  doc: "Minimum fragment size in basepair. Any predicted\nfragment size less than\
    \ this will be excluded.\nDEFAULT: 20"
  type: long
  inputBinding:
    prefix: --d-min
- id: in_mfold__mfold
  doc: "MFOLD, --mfold MFOLD MFOLD\nSelect the regions within MFOLD range of high-\n\
    confidence enrichment ratio against background to\nbuild model. Fold-enrichment\
    \ in regions must be lower\nthan upper limit, and higher than the lower limit.\
    \ Use\nas \"-m 10 30\". This setting is only used while\nbuilding the shifting\
    \ model. Tweaking it is not\nrecommended. DEFAULT:5 50"
  type: long
  inputBinding:
    prefix: -m
- id: in_fix_bimodal
  doc: "Whether turn on the auto pair model process. If set,\nwhen MACS failed to\
    \ build paired model, it will use\nthe nomodel settings, the --exsize parameter\
    \ to extend\neach tags towards 3' direction. Not to use this\nautomate fixation\
    \ is a default behavior now. DEFAULT:\nFalse"
  type: boolean
  inputBinding:
    prefix: --fix-bimodal
- id: in_q_value
  doc: "Minimum FDR (q-value) cutoff for peak detection.\nDEFAULT: 0.05. -q, and -p\
    \ are mutually exclusive."
  type: double
  inputBinding:
    prefix: --qvalue
- id: in_p_value
  doc: "Pvalue cutoff for peak detection. DEFAULT: not set.\n-q, and -p are mutually\
    \ exclusive. If pvalue cutoff is\nset, qvalue will not be calculated and reported\
    \ as -1\nin the final .xls file."
  type: File
  inputBinding:
    prefix: --pvalue
- id: in_scale_to
  doc: "When set to 'small', scale the larger sample up to the\nsmaller sample. When\
    \ set to 'larger', scale the\nsmaller sample up to the bigger sample. By default,\n\
    scale to 'small'. This option replaces the obsolete '\n--to-large' option. The\
    \ default behavior is\nrecommended since it will lead to less significant\np/q-values\
    \ in general but more specific results. Keep\nin mind that scaling down will influence\
    \ control/input\nsample more. DEFAULT: 'small', the choice is either\n'small'\
    \ or 'large'."
  type: string
  inputBinding:
    prefix: --scale-to
- id: in_down_sample
  doc: "When set, random sampling method will scale down the\nbigger sample. By default,\
    \ MACS uses linear scaling.\nWarning: This option will make your result unstable\n\
    and irreproducible since each time, random reads would\nbe selected. Consider\
    \ to use 'randsample' script\ninstead. <not implmented>If used together with --SPMR,\n\
    1 million unique reads will be randomly picked.</not\nimplemented> Caution: due\
    \ to the implementation, the\nfinal number of selected reads may not be as you\n\
    expected! DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --down-sample
- id: in_seed
  doc: "Set the random seed while down sampling data. Must be\na non-negative integer\
    \ in order to be effective.\nDEFAULT: not set"
  type: long
  inputBinding:
    prefix: --seed
- id: in_tempdir
  doc: 'Optional directory to store temp files. DEFAULT: /tmp'
  type: Directory
  inputBinding:
    prefix: --tempdir
- id: in_no_lambda
  doc: "If True, MACS will use fixed background lambda as\nlocal lambda for every\
    \ peak region. Normally, MACS\ncalculates a dynamic local lambda to reflect the\
    \ local\nbias due to the potential chromatin accessibility."
  type: boolean
  inputBinding:
    prefix: --nolambda
- id: in_s_local
  doc: "The small nearby region in basepairs to calculate\ndynamic lambda. This is\
    \ used to capture the bias near\nthe peak summit region. Invalid if there is no\
    \ control\ndata. If you set this to 0, MACS will skip slocal\nlambda calculation.\
    \ *Note* that MACS will always\nperform a d-size local lambda calculation while\
    \ the\ncontrol data is available. The final local bias would\nbe the maximum of\
    \ the lambda value from d, slocal, and\nllocal size windows. While control is\
    \ not available, d\nand slocal lambda won't be considered. DEFAULT: 1000"
  type: long
  inputBinding:
    prefix: --slocal
- id: in_l_local
  doc: "The large nearby region in basepairs to calculate\ndynamic lambda. This is\
    \ used to capture the surround\nbias. If you set this to 0, MACS will skip llocal\n\
    lambda calculation. *Note* that MACS will always\nperform a d-size local lambda\
    \ calculation while the\ncontrol data is available. The final local bias would\n\
    be the maximum of the lambda value from d, slocal, and\nllocal size windows. While\
    \ control is not available, d\nand slocal lambda won't be considered. DEFAULT:\
    \ 10000."
  type: long
  inputBinding:
    prefix: --llocal
- id: in_max_gap
  doc: "Maximum gap between significant sites to cluster them\ntogether. The DEFAULT\
    \ value is the detected read\nlength/tag size."
  type: long
  inputBinding:
    prefix: --max-gap
- id: in_min_length
  doc: "Minimum length of a peak. The DEFAULT value is the\npredicted fragment size\
    \ d. Note, if you set a value\nsmaller than the fragment size, it may have NO\
    \ effect\non the result. For BROAD peak calling, try to set a\nlarge value such\
    \ as 500bps. You can also use '--\ncutoff-analysis' option with default setting,\
    \ and\ncheck the column 'avelpeak' under different cutoff\nvalues to decide a\
    \ reasonable minlen value."
  type: long
  inputBinding:
    prefix: --min-length
- id: in_broad
  doc: If set, MACS will try to call broad peaks using the
  type: boolean
  inputBinding:
    prefix: --broad
- id: in_cut_off_analysis
  doc: "While set, MACS2 will analyze number or total length\nof peaks that can be\
    \ called by different p-value\ncutoff then output a summary table to help user\
    \ decide\na better cutoff. The table will be saved in\nNAME_cutoff_analysis.txt\
    \ file. Note, minlen and maxgap\nmay affect the results. WARNING: May take ~30\
    \ folds\nlonger time to finish. The result can be useful for\nusers to decide\
    \ a reasonable cutoff value. DEFAULT:\nFalse"
  type: boolean
  inputBinding:
    prefix: --cutoff-analysis
- id: in_call_summits
  doc: "If set, MACS will use a more sophisticated signal\nprocessing approach to\
    \ find subpeak summits in each\nenriched peak region. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --call-summits
- id: in_fe_cut_off
  doc: "When set, the value will be used to filter out peaks\nwith low fold-enrichment.\
    \ Note, MACS2 use 1.0 as\npseudocount while calculating fold-enrichment.\nDEFAULT:\
    \ 1.0"
  type: double
  inputBinding:
    prefix: --fe-cutoff
- id: in_buffer_size
  doc: "Buffer size for incrementally increasing internal\narray size to store reads\
    \ alignment information. In\nmost cases, you don't have to change this parameter.\n\
    However, if there are large number of\nchromosomes/contigs/scaffolds in your alignment,\
    \ it's\nrecommended to specify a smaller buffer size in order\nto decrease memory\
    \ usage (but it will take longer time\nto read alignment files). Minimum memory\
    \ requested for\nreading an alignment file is about # of CHROMOSOME *\nBUFFER_SIZE\
    \ * 8 Bytes. DEFAULT: 100000"
  type: long
  inputBinding:
    prefix: --buffer-size
- id: in_to_large
  doc: Obsolete option. Please use '--scale-to large'
  type: boolean
  inputBinding:
    prefix: --to-large
- id: in_instead_dot
  doc: --ratio RATIO         Obsolete option. Originally designed to normalize
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_name
  doc: "Experiment name, which will be used to generate output\nfile names. DEFAULT:\
    \ \"NA\""
  type: File
  outputBinding:
    glob: $(inputs.in_name)
cwlVersion: v1.1
baseCommand:
- macs2
- callpeak
