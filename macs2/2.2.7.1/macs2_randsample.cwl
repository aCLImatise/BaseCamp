class: CommandLineTool
id: macs2_randsample.cwl
inputs:
- id: i_file
  doc: Alignment file. If multiple files are given as '-t A B C', then they will all
    be read and combined. Note that pair-end data is not supposed to work with this
    command. REQUIRED.
  type: string[]
  inputBinding:
    prefix: --ifile
- id: percentage
  doc: Percentage of tags you want to keep. Input 80.0 for 80%. This option can't
    be used at the same time with -n/--num. REQUIRED
  type: string
  inputBinding:
    prefix: --percentage
- id: number
  doc: Number of tags you want to keep. Input 8000000 or 8e+6 for 8 million. This
    option can't be used at the same time with -p/--percent. Note that the number
    of tags in output is approximate as the number specified here. REQUIRED
  type: string
  inputBinding:
    prefix: --number
- id: seed
  doc: 'Set the random seed while down sampling data. Must be a non-negative integer
    in order to be effective. DEFAULT: not set'
  type: string
  inputBinding:
    prefix: --seed
- id: ofile
  doc: 'Output BED file name. If not specified, will write to standard output. Note,
    if the input format is BAMPE or BEDPE, the output will be in BEDPE format. DEFAULT:
    stdout'
  type: string
  inputBinding:
    prefix: --ofile
- id: outdir
  doc: 'If specified all output files will be written to that directory. Default:
    the current working directory'
  type: string
  inputBinding:
    prefix: --outdir
- id: t_size
  doc: 'Tag size. This will override the auto detected tag size. DEFAULT: Not set'
  type: string
  inputBinding:
    prefix: --tsize
- id: format
  doc: 'Format of tag file, "AUTO", "BED" or "ELAND" or "ELANDMULTI" or "ELANDEXPORT"
    or "SAM" or "BAM" or "BOWTIE" or "BAMPE" or "BEDPE". The default AUTO option will
    macs2 randsample decide which format the file is. Please check the definition
    in README file if you choose ELAND/ELANDMULTI/ELANDEXPORT/SAM/BAM/BOWTIE or BAMPE/BEDPE.
    DEFAULT: "AUTO"'
  type: string
  inputBinding:
    prefix: --format
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
outputs: []
cwlVersion: v1.1
baseCommand:
- macs2
- randsample
