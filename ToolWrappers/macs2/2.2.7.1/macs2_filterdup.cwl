class: CommandLineTool
id: macs2_filterdup.cwl
inputs:
- id: in_i_file
  doc: "Alignment file. If multiple files are given as '-t A B\nC', then they will\
    \ all be read and combined. Note that\npair-end data is not supposed to work with\
    \ this\ncommand. REQUIRED."
  type: File[]
  inputBinding:
    prefix: --ifile
- id: in_format
  doc: "Format of tag file, \"AUTO\", \"BED\" or \"ELAND\" or\n\"ELANDMULTI\" or \"\
    ELANDEXPORT\" or \"SAM\" or \"BAM\" or\n\"BOWTIE\" or \"BAMPE\" or \"BEDPE\".\
    \ The default AUTO\noption will let 'macs2 filterdup' decide which format\nthe\
    \ file is. Please check the definition in README\nfile if you choose\nELAND/ELANDMULTI/ELANDEXPORT/SAM/BAM/BOWTIE\
    \ or\nBAMPE/BEDPE. DEFAULT: \"AUTO\""
  type: string?
  inputBinding:
    prefix: --format
- id: in_g_size
  doc: "Effective genome size. It can be 1.0e+9 or 1000000000,\nor shortcuts:'hs'\
    \ for human (2.7e9), 'mm' for mouse\n(1.87e9), 'ce' for C. elegans (9e7) and 'dm'\
    \ for\nfruitfly (1.2e8), DEFAULT:hs"
  type: long?
  inputBinding:
    prefix: --gsize
- id: in_t_size
  doc: "Tag size. This will override the auto detected tag\nsize. DEFAULT: Not set"
  type: long?
  inputBinding:
    prefix: --tsize
- id: in_p_value
  doc: "Pvalue cutoff for binomial distribution test.\nDEFAULT:1e-5"
  type: double?
  inputBinding:
    prefix: --pvalue
- id: in_keep_dup
  doc: "It controls the 'macs2 filterdup' behavior towards\nduplicate tags/pairs at\
    \ the exact same location -- the\nsame coordination and the same strand. The 'auto'\n\
    option makes 'macs2 filterdup' calculate the maximum\ntags at the exact same location\
    \ based on binomal\ndistribution using given -p as pvalue cutoff; and the\n'all'\
    \ option keeps every tags (useful if you only want\nto convert formats). If an\
    \ integer is given, at most\nthis number of tags will be kept at the same location.\n\
    Note, MACS2 callpeak function uses KEEPDUPLICATES=1 as\ndefault. Note, if you've\
    \ used samtools or picard to\nflag reads as 'PCR/Optical duplicate' in bit 1024,\n\
    MACS2 will still read them although the reads may be\ndecided by MACS2 as duplicate\
    \ later. Default: auto"
  type: long?
  inputBinding:
    prefix: --keep-dup
- id: in_buffer_size
  doc: "Buffer size for incrementally increasing internal\narray size to store reads\
    \ alignment information. In\nmost cases, you don't have to change this parameter.\n\
    However, if there are large number of\nchromosomes/contigs/scaffolds in your alignment,\
    \ it's\nrecommended to specify a smaller buffer size in order\nto decrease memory\
    \ usage (but it will take longer time\nto read alignment files). Minimum memory\
    \ requested for\nreading an alignment file is about # of CHROMOSOME *\nBUFFER_SIZE\
    \ * 8 Bytes. DEFAULT: 100000"
  type: long?
  inputBinding:
    prefix: --buffer-size
- id: in_verbose
  doc: "Set verbose level. 0: only show critical message, 1:\nshow additional warning\
    \ message, 2: show process\ninformation, 3: show debug messages. If you want to\n\
    know where are the duplicate reads, use 3. DEFAULT:2"
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_ofile
  doc: "Output BED file name. If not specified, will write to\nstandard output. Note,\
    \ if the input format is BAMPE or\nBEDPE, the output will be in BEDPE format.\
    \ DEFAULT:\nstdout"
  type: File?
  inputBinding:
    prefix: --ofile
- id: in_dry_run
  doc: "When set, filterdup will only output numbers instead\nof writing output files,\
    \ including maximum allowable\nduplicates, total number of reads before filtering,\n\
    total number of reads after filtering, and redundant\nrate. Default: not set\n"
  type: boolean?
  inputBinding:
    prefix: --dry-run
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_ofile
  doc: "Output BED file name. If not specified, will write to\nstandard output. Note,\
    \ if the input format is BAMPE or\nBEDPE, the output will be in BEDPE format.\
    \ DEFAULT:\nstdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_ofile)
hints: []
cwlVersion: v1.1
baseCommand:
- macs2
- filterdup
