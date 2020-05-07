class: CommandLineTool
id: macs2_callpeak.cwl
inputs:
- id: treatment
  doc: ChIP-seq treatment file. If multiple files are given as '-t A B C', then they
    will all be read and pooled together. REQUIRED.
  type: string[]
  inputBinding:
    prefix: --treatment
- id: c
  doc: "[CFILE [CFILE ...]], --control [CFILE [CFILE ...]] Control file. If multiple\
    \ files are given as '-c A B C', they will be pooled to estimate ChIP-seq background\
    \ noise."
  type: boolean
  inputBinding:
    prefix: -c
- id: format
  doc: 'Format of tag file, "AUTO", "BED" or "ELAND" or "ELANDMULTI" or "ELANDEXPORT"
    or "SAM" or "BAM" or "BOWTIE" or "BAMPE" or "BEDPE". The default AUTO option will
    let MACS decide which format (except for BAMPE and BEDPE which should be implicitly
    set) the file is. Please check the definition in README. Please note that if the
    format is set as BAMPE or BEDPE, MACS2 will call its special Paired-end mode to
    call peaks by piling up the actual ChIPed fragments defined by both aligned ends,
    instead of predicting the fragment size first and extending reads. Also please
    note that the BEDPE only contains three columns, and is NOT the same BEDPE format
    used by BEDTOOLS. DEFAULT: "AUTO"'
  type: string
  inputBinding:
    prefix: --format
- id: g_size
  doc: Effective genome size. It can be 1.0e+9 or 1000000000, or shortcuts:'hs' for
    human (2.7e9), 'mm' for mouse (1.87e9), 'ce' for C. elegans (9e7) and 'dm' for
    fruitfly (1.2e8), Default:hs
  type: string
  inputBinding:
    prefix: --gsize
- id: t_size
  doc: 'Tag size/read length. This will override the auto detected tag size. DEFAULT:
    Not set'
  type: string
  inputBinding:
    prefix: --tsize
- id: keep_dup
  doc: "It controls the behavior towards duplicate tags at the exact same location\
    \ -- the same coordination and the same strand. The 'auto' option makes MACS calculate\
    \ the maximum tags at the exact same location based on binomal distribution using\
    \ 1e-5 as pvalue cutoff; and the 'all' option keeps every tags. If an integer\
    \ is given, at most this number of tags will be kept at the same location. Note,\
    \ if you've used samtools or picard to flag reads as 'PCR/Optical duplicate' in\
    \ bit 1024, MACS2 will still read them although the reads may be decided by MACS2\
    \ as duplicate later. If you plan to rely on samtools/picard/any other tool to\
    \ filter duplicates, please remove those duplicate reads and save a new alignment\
    \ file then ask MACS2 to keep all by '--keep-dup all'. The default is to keep\
    \ one tag at the same location. Default: 1"
  type: string
  inputBinding:
    prefix: --keep-dup
- id: outdir
  doc: 'If specified all output files will be written to that directory. Default:
    the current working directory'
  type: string
  inputBinding:
    prefix: --outdir
- id: name
  doc: 'Experiment name, which will be used to generate output file names. DEFAULT:
    "NA"'
  type: string
  inputBinding:
    prefix: --name
- id: bdg
  doc: 'Whether or not to save extended fragment pileup, and local lambda tracks (two
    files) at every bp into a bedGraph file. DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --bdg
- id: verbose
  doc: 'Set verbose level of runtime message. 0: only show critical message, 1: show
    additional warning message, 2: show process information, 3: show debug messages.
    DEFAULT:2'
  type: string
  inputBinding:
    prefix: --verbose
- id: track_line
  doc: 'Tells MACS to include trackline with bedGraph files. To include this trackline
    while displaying bedGraph at UCSC genome browser, can show name and description
    of the file as well. However my suggestion is to convert bedGraph to bigWig, then
    show the smaller and faster binary bigWig file at UCSC genome browser, as well
    as downstream analysis. Require -B to be set. Default: Not include trackline.'
  type: boolean
  inputBinding:
    prefix: --trackline
- id: sp_mr
  doc: "If True, MACS will SAVE signal per million reads for fragment pileup profiles.\
    \ It won't interfere with computing pvalue/qvalue during peak calling, since internally\
    \ MACS2 keeps using the raw pileup and scaling factors between larger and smaller\
    \ dataset to calculate statistics measurements. If you plan to use the signal\
    \ output in bedGraph to call peaks using bdgcmp and bdgpeakcall, you shouldn't\
    \ use this option because you will end up with different results. However, this\
    \ option is recommended for displaying normalized pileup tracks across many datasets.\
    \ Require -B to be set. Default: False"
  type: boolean
  inputBinding:
    prefix: --SPMR
- id: no_model
  doc: "Whether or not to build the shifting model. If True, MACS will not build model.\
    \ by default it means shifting size = 100, try to set extsize to change it. It's\
    \ highly recommended that while you have many datasets to process and you plan\
    \ to compare different conditions, aka differential calling, use both 'nomodel'\
    \ and 'extsize' to make signal files from different datasets comparable. DEFAULT:\
    \ False"
  type: boolean
  inputBinding:
    prefix: --nomodel
- id: shift
  doc: "(NOT the legacy --shiftsize option!) The arbitrary shift in bp. Use discretion\
    \ while setting it other than default value. When NOMODEL is set, MACS will use\
    \ this value to move cutting ends (5') towards 5'->3' direction then apply EXTSIZE\
    \ to extend them to fragments. When this value is negative, ends will be moved\
    \ toward 3'->5' direction. Recommended to keep it as default 0 for ChIP-Seq datasets,\
    \ or -1 * half of EXTSIZE together with EXTSIZE option for detecting enriched\
    \ cutting loci such as certain DNAseI-Seq datasets. Note, you can't set values\
    \ other than 0 if format is BAMPE or BEDPE for paired-end data. DEFAULT: 0."
  type: string
  inputBinding:
    prefix: --shift
- id: ext_size
  doc: "The arbitrary extension size in bp. When nomodel is true, MACS will use this\
    \ value as fragment size to extend each read towards 3' end, then pile them up.\
    \ It's exactly twice the number of obsolete SHIFTSIZE. In previous language, each\
    \ read is moved 5'->3' direction to middle of fragment by 1/2 d, then extended\
    \ to both direction with 1/2 d. This is equivalent to say each read is extended\
    \ towards 5'->3' into a d size fragment. DEFAULT: 200. EXTSIZE and SHIFT can be\
    \ combined when necessary. Check SHIFT option."
  type: string
  inputBinding:
    prefix: --extsize
- id: bw
  doc: 'Band width for picking regions to compute fragment size. This value is only
    used while building the shifting model. Tweaking this is not recommended. DEFAULT:
    300'
  type: string
  inputBinding:
    prefix: --bw
- id: d_min
  doc: 'Minimum fragment size in basepair. Any predicted fragment size less than this
    will be excluded. DEFAULT: 20'
  type: string
  inputBinding:
    prefix: --d-min
- id: m
  doc: MFOLD, --mfold MFOLD MFOLD Select the regions within MFOLD range of high- confidence
    enrichment ratio against background to build model. Fold-enrichment in regions
    must be lower than upper limit, and higher than the lower limit. Use as "-m 10
    30". This setting is only used while building the shifting model. Tweaking it
    is not recommended. DEFAULT:5 50
  type: string
  inputBinding:
    prefix: -m
- id: fix_bimodal
  doc: "Whether turn on the auto pair model process. If set, when MACS failed to build\
    \ paired model, it will use the nomodel settings, the --exsize parameter to extend\
    \ each tags towards 3' direction. Not to use this automate fixation is a default\
    \ behavior now. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --fix-bimodal
- id: q_value
  doc: 'Minimum FDR (q-value) cutoff for peak detection. DEFAULT: 0.05. -q, and -p
    are mutually exclusive.'
  type: string
  inputBinding:
    prefix: --qvalue
- id: p_value
  doc: 'Pvalue cutoff for peak detection. DEFAULT: not set. -q, and -p are mutually
    exclusive. If pvalue cutoff is set, qvalue will not be calculated and reported
    as -1 in the final .xls file.'
  type: string
  inputBinding:
    prefix: --pvalue
- id: scale_to
  doc: "When set to 'small', scale the larger sample up to the smaller sample. When\
    \ set to 'larger', scale the smaller sample up to the bigger sample. By default,\
    \ scale to 'small'. This option replaces the obsolete ' --to-large' option. The\
    \ default behavior is recommended since it will lead to less significant p/q-values\
    \ in general but more specific results. Keep in mind that scaling down will influence\
    \ control/input sample more. DEFAULT: 'small', the choice is either 'small' or\
    \ 'large'."
  type: string
  inputBinding:
    prefix: --scale-to
- id: down_sample
  doc: "When set, random sampling method will scale down the bigger sample. By default,\
    \ MACS uses linear scaling. Warning: This option will make your result unstable\
    \ and irreproducible since each time, random reads would be selected. Consider\
    \ to use 'randsample' script instead. <not implmented>If used together with --SPMR,\
    \ 1 million unique reads will be randomly picked.</not implemented> Caution: due\
    \ to the implementation, the final number of selected reads may not be as you\
    \ expected! DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --down-sample
- id: seed
  doc: 'Set the random seed while down sampling data. Must be a non-negative integer
    in order to be effective. DEFAULT: not set'
  type: string
  inputBinding:
    prefix: --seed
- id: tempdir
  doc: 'Optional directory to store temp files. DEFAULT: /tmp'
  type: string
  inputBinding:
    prefix: --tempdir
- id: no_lambda
  doc: If True, MACS will use fixed background lambda as local lambda for every peak
    region. Normally, MACS calculates a dynamic local lambda to reflect the local
    bias due to the potential chromatin accessibility.
  type: boolean
  inputBinding:
    prefix: --nolambda
- id: s_local
  doc: "The small nearby region in basepairs to calculate dynamic lambda. This is\
    \ used to capture the bias near the peak summit region. Invalid if there is no\
    \ control data. If you set this to 0, MACS will skip slocal lambda calculation.\
    \ *Note* that MACS will always perform a d-size local lambda calculation while\
    \ the control data is available. The final local bias would be the maximum of\
    \ the lambda value from d, slocal, and llocal size windows. While control is not\
    \ available, d and slocal lambda won't be considered. DEFAULT: 1000"
  type: string
  inputBinding:
    prefix: --slocal
- id: l_local
  doc: "The large nearby region in basepairs to calculate dynamic lambda. This is\
    \ used to capture the surround bias. If you set this to 0, MACS will skip llocal\
    \ lambda calculation. *Note* that MACS will always perform a d-size local lambda\
    \ calculation while the control data is available. The final local bias would\
    \ be the maximum of the lambda value from d, slocal, and llocal size windows.\
    \ While control is not available, d and slocal lambda won't be considered. DEFAULT:\
    \ 10000."
  type: string
  inputBinding:
    prefix: --llocal
- id: max_gap
  doc: Maximum gap between significant sites to cluster them together. The DEFAULT
    value is the detected read length/tag size.
  type: long
  inputBinding:
    prefix: --max-gap
- id: min_length
  doc: Minimum length of a peak. The DEFAULT value is the predicted fragment size
    d. Note, if you set a value smaller than the fragment size, it may have NO effect
    on the result. For BROAD peak calling, try to set a large value such as 500bps.
    You can also use '-- cutoff-analysis' option with default setting, and check the
    column 'avelpeak' under different cutoff values to decide a reasonable minlen
    value.
  type: long
  inputBinding:
    prefix: --min-length
- id: broad
  doc: "If set, MACS will try to call broad peaks using the --broad-cutoff setting.\
    \ Please tweak '--broad-cutoff' setting to control the peak calling behavior.\
    \ At the meantime, either -q or -p cutoff will be used to define regions with\
    \ 'stronger enrichment' inside of broad peaks. The maximum gap is expanded to\
    \ 4 * MAXGAP (--max-gap parameter). As a result, MACS will output a 'gappedPeak'\
    \ and a 'broadPeak' file instead of 'narrowPeak' file. Note, a broad peak will\
    \ be reported even if there is no 'stronger enrichment' inside. DEFAULT: False"
  type: boolean
  inputBinding:
    prefix: --broad
- id: broad_cut_off
  doc: "Cutoff for broad region. This option is not available unless --broad is set.\
    \ If -p is set, this is a pvalue cutoff, otherwise, it's a qvalue cutoff. Please\
    \ note that in broad peakcalling mode, MACS2 uses this setting to control the\
    \ overall peak calling behavior, then uses -q or -p setting to define regions\
    \ inside broad region as 'stronger' enrichment. DEFAULT: 0.1"
  type: string
  inputBinding:
    prefix: --broad-cutoff
- id: cut_off_analysis
  doc: 'While set, MACS2 will analyze number or total length of peaks that can be
    called by different p-value cutoff then output a summary table to help user decide
    a better cutoff. The table will be saved in NAME_cutoff_analysis.txt file. Note,
    minlen and maxgap may affect the results. WARNING: May take ~30 folds longer time
    to finish. The result can be useful for users to decide a reasonable cutoff value.
    DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --cutoff-analysis
- id: call_summits
  doc: 'If set, MACS will use a more sophisticated signal processing approach to find
    subpeak summits in each enriched peak region. DEFAULT: False'
  type: boolean
  inputBinding:
    prefix: --call-summits
- id: fe_cut_off
  doc: 'When set, the value will be used to filter out peaks with low fold-enrichment.
    Note, MACS2 use 1.0 as pseudocount while calculating fold-enrichment. DEFAULT:
    1.0'
  type: string
  inputBinding:
    prefix: --fe-cutoff
- id: buffer_size
  doc: "Buffer size for incrementally increasing internal array size to store reads\
    \ alignment information. In most cases, you don't have to change this parameter.\
    \ However, if there are large number of chromosomes/contigs/scaffolds in your\
    \ alignment, it's recommended to specify a smaller buffer size in order to decrease\
    \ memory usage (but it will take longer time to read alignment files). Minimum\
    \ memory requested for reading an alignment file is about # of CHROMOSOME * BUFFER_SIZE\
    \ * 8 Bytes. DEFAULT: 100000"
  type: string
  inputBinding:
    prefix: --buffer-size
- id: to_large
  doc: Obsolete option. Please use '--scale-to large' instead.
  type: boolean
  inputBinding:
    prefix: --to-large
- id: ratio
  doc: Obsolete option. Originally designed to normalize treatment and control with
    customized ratio, now it won't have any effect.
  type: string
  inputBinding:
    prefix: --ratio
outputs: []
cwlVersion: v1.1
baseCommand:
- macs2
- callpeak
