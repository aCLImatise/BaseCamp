class: CommandLineTool
id: macs2_refinepeak.cwl
inputs:
- id: b
  doc: Candidate peak file in BED format. REQUIRED.
  type: string
  inputBinding:
    prefix: -b
- id: i_file
  doc: ChIP-seq alignment file. If multiple files are given as '-t A B C', then they
    will all be read and combined. Note that pair-end data is not supposed to work
    with this command. REQUIRED.
  type: string[]
  inputBinding:
    prefix: --ifile
- id: format
  doc: "Format of tag file, \"AUTO\", \"BED\" or \"ELAND\" or \"ELANDMULTI\" or \"\
    ELANDEXPORT\" or \"SAM\" or \"BAM\" or \"BOWTIE\". The default AUTO option will\
    \ let 'macs2 refinepeak' decide which format the file is. Please check the definition\
    \ in README file if you choose ELAND/ELANDMULTI/ELANDEXPORT/SAM/BAM/BOWTIE. DEFAULT:\
    \ \"AUTO\""
  type: string
  inputBinding:
    prefix: --format
- id: cut_off
  doc: 'Cutoff DEFAULT: 5'
  type: string
  inputBinding:
    prefix: --cutoff
- id: window_size
  doc: 'Scan window size on both side of the summit (default: 100bp)'
  type: string
  inputBinding:
    prefix: --window-size
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
  doc: Output file name. Mutually exclusive with --o-prefix.
  type: string
  inputBinding:
    prefix: --ofile
- id: o_prefix
  doc: Output file prefix. Mutually exclusive with -o/--ofile.
  type: string
  inputBinding:
    prefix: --o-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- macs2
- refinepeak
