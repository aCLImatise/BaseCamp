class: CommandLineTool
id: macs2_predictd.cwl
inputs:
- id: in_i_file
  doc: "ChIP-seq alignment file. If multiple files are given\nas '-t A B C', then\
    \ they will all be read and\ncombined. Note that pair-end data is not supposed\
    \ to\nwork with this command. REQUIRED."
  type: File[]
  inputBinding:
    prefix: --ifile
- id: in_format
  doc: "Format of tag file, \"AUTO\", \"BED\" or \"ELAND\" or\n\"ELANDMULTI\" or \"\
    ELANDEXPORT\" or \"SAM\" or \"BAM\" or\n\"BOWTIE\" or \"BAMPE\" or \"BEDPE\".\
    \ The default AUTO\noption will let MACS decide which format the file is.\nPlease\
    \ check the definition in README file if you\nchoose ELAND/ELANDMULTI/ELANDEXPORT/SAM/BAM/BOWTIE.\n\
    DEFAULT: \"AUTO\""
  type: string?
  inputBinding:
    prefix: --format
- id: in_g_size
  doc: "Effective genome size. It can be 1.0e+9 or 1000000000,\nor shortcuts:'hs'\
    \ for human (2.7e9), 'mm' for mouse\n(1.87e9), 'ce' for C. elegans (9e7) and 'dm'\
    \ for\nfruitfly (1.2e8), Default:hs"
  type: long?
  inputBinding:
    prefix: --gsize
- id: in_t_size
  doc: "Tag size. This will override the auto detected tag\nsize. DEFAULT: Not set"
  type: long?
  inputBinding:
    prefix: --tsize
- id: in_bw
  doc: "Band width for picking regions to compute fragment\nsize. This value is only\
    \ used while building the\nshifting model. DEFAULT: 300"
  type: long?
  inputBinding:
    prefix: --bw
- id: in_d_min
  doc: "Minimum fragment size in basepair. Any predicted\nfragment size less than\
    \ this will be excluded.\nDEFAULT: 20"
  type: long?
  inputBinding:
    prefix: --d-min
- id: in_mfold__mfold
  doc: "MFOLD, --mfold MFOLD MFOLD\nSelect the regions within MFOLD range of high-\n\
    confidence enrichment ratio against background to\nbuild model. Fold-enrichment\
    \ in regions must be lower\nthan upper limit, and higher than the lower limit.\
    \ Use\nas \"-m 10 30\". DEFAULT:5 50"
  type: long?
  inputBinding:
    prefix: -m
- id: in_outdir
  doc: "If specified all output files will be written to that\ndirectory. Default:\
    \ the current working directory"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_r_file
  doc: "PREFIX of filename of R script for drawing\nX-correlation figure. DEFAULT:'predictd'\
    \ and R file\nwill be predicted_model.R"
  type: File?
  inputBinding:
    prefix: --rfile
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
  doc: "Set verbose level of runtime message. 0: only show\ncritical message, 1: show\
    \ additional warning message,\n2: show process information, 3: show debug messages.\n\
    DEFAULT:2\n"
  type: long?
  inputBinding:
    prefix: --verbose
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
hints: []
cwlVersion: v1.1
baseCommand:
- macs2
- predictd
