class: CommandLineTool
id: simreads.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_chrom_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: 'Name of output file (default: stdout) '
  type: boolean
  inputBinding:
    prefix: -output
- id: reads
  doc: 'number of reads to simulate '
  type: boolean
  inputBinding:
    prefix: -reads
- id: width
  doc: 'width of reads to simulate '
  type: boolean
  inputBinding:
    prefix: -width
- id: err
  doc: 'maximum number of simulated sequencing errors '
  type: boolean
  inputBinding:
    prefix: -err
- id: verbose
  doc: 'print more run info '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: fast_q
  doc: 'write FASTQ format reads '
  type: boolean
  inputBinding:
    prefix: -fastq
- id: prob
  doc: 'prb output file '
  type: boolean
  inputBinding:
    prefix: -prob
- id: seed
  doc: 'random number seed '
  type: boolean
  inputBinding:
    prefix: -seed
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
outputs: []
cwlVersion: v1.1
baseCommand:
- simreads
