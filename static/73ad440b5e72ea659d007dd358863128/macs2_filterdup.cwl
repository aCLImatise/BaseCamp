class: CommandLineTool
id: macs2_filterdup.cwl
inputs:
- id: i_file
  doc: Alignment file. If multiple files are given as '-t A B C', then they will all
    be read and combined. Note that pair-end data is not supposed to work with this
    command. REQUIRED.
  type: string[]
  inputBinding:
    prefix: --ifile
- id: format
  doc: "Format of tag file, \"AUTO\", \"BED\" or \"ELAND\" or \"ELANDMULTI\" or \"\
    ELANDEXPORT\" or \"SAM\" or \"BAM\" or \"BOWTIE\" or \"BAMPE\" or \"BEDPE\". The\
    \ default AUTO option will let 'macs2 filterdup' decide which format the file\
    \ is. Please check the definition in README file if you choose ELAND/ELANDMULTI/ELANDEXPORT/SAM/BAM/BOWTIE\
    \ or BAMPE/BEDPE. DEFAULT: \"AUTO\""
  type: string
  inputBinding:
    prefix: --format
- id: g_size
  doc: Effective genome size. It can be 1.0e+9 or 1000000000, or shortcuts:'hs' for
    human (2.7e9), 'mm' for mouse (1.87e9), 'ce' for C. elegans (9e7) and 'dm' for
    fruitfly (1.2e8), DEFAULT:hs
  type: string
  inputBinding:
    prefix: --gsize
- id: t_size
  doc: 'Tag size. This will override the auto detected tag size. DEFAULT: Not set'
  type: string
  inputBinding:
    prefix: --tsize
- id: p_value
  doc: Pvalue cutoff for binomial distribution test. DEFAULT:1e-5
  type: string
  inputBinding:
    prefix: --pvalue
- id: keep_dup
  doc: "It controls the 'macs2 filterdup' behavior towards duplicate tags/pairs at\
    \ the exact same location -- the same coordination and the same strand. The 'auto'\
    \ option makes 'macs2 filterdup' calculate the maximum tags at the exact same\
    \ location based on binomal distribution using given -p as pvalue cutoff; and\
    \ the 'all' option keeps every tags (useful if you only want to convert formats).\
    \ If an integer is given, at most this number of tags will be kept at the same\
    \ location. Note, MACS2 callpeak function uses KEEPDUPLICATES=1 as default. Note,\
    \ if you've used samtools or picard to flag reads as 'PCR/Optical duplicate' in\
    \ bit 1024, MACS2 will still read them although the reads may be decided by MACS2\
    \ as duplicate later. Default: auto"
  type: string
  inputBinding:
    prefix: --keep-dup
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
- id: verbose
  doc: 'Set verbose level. 0: only show critical message, 1: show additional warning
    message, 2: show process information, 3: show debug messages. If you want to know
    where are the duplicate reads, use 3. DEFAULT:2'
  type: string
  inputBinding:
    prefix: --verbose
- id: outdir
  doc: 'If specified all output files will be written to that directory. Default:
    the current working directory'
  type: string
  inputBinding:
    prefix: --outdir
- id: ofile
  doc: 'Output BED file name. If not specified, will write to standard output. Note,
    if the input format is BAMPE or BEDPE, the output will be in BEDPE format. DEFAULT:
    stdout'
  type: string
  inputBinding:
    prefix: --ofile
- id: dry_run
  doc: 'When set, filterdup will only output numbers instead of writing output files,
    including maximum allowable duplicates, total number of reads before filtering,
    total number of reads after filtering, and redundant rate. Default: not set'
  type: boolean
  inputBinding:
    prefix: --dry-run
outputs: []
cwlVersion: v1.1
baseCommand:
- macs2
- filterdup
