class: CommandLineTool
id: macs2_predictd.cwl
inputs:
- id: i_file
  doc: ChIP-seq alignment file. If multiple files are given as '-t A B C', then they
    will all be read and combined. Note that pair-end data is not supposed to work
    with this command. REQUIRED.
  type: string[]
  inputBinding:
    prefix: --ifile
- id: format
  doc: 'Format of tag file, "AUTO", "BED" or "ELAND" or "ELANDMULTI" or "ELANDEXPORT"
    or "SAM" or "BAM" or "BOWTIE" or "BAMPE" or "BEDPE". The default AUTO option will
    let MACS decide which format the file is. Please check the definition in README
    file if you choose ELAND/ELANDMULTI/ELANDEXPORT/SAM/BAM/BOWTIE. DEFAULT: "AUTO"'
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
  doc: 'Tag size. This will override the auto detected tag size. DEFAULT: Not set'
  type: string
  inputBinding:
    prefix: --tsize
- id: bw
  doc: 'Band width for picking regions to compute fragment size. This value is only
    used while building the shifting model. DEFAULT: 300'
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
    30". DEFAULT:5 50
  type: string
  inputBinding:
    prefix: -m
- id: outdir
  doc: 'If specified all output files will be written to that directory. Default:
    the current working directory'
  type: string
  inputBinding:
    prefix: --outdir
- id: r_file
  doc: PREFIX of filename of R script for drawing X-correlation figure. DEFAULT:'predictd'
    and R file will be predicted_model.R
  type: string
  inputBinding:
    prefix: --rfile
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
  doc: 'Set verbose level of runtime message. 0: only show critical message, 1: show
    additional warning message, 2: show process information, 3: show debug messages.
    DEFAULT:2'
  type: string
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- macs2
- predictd
