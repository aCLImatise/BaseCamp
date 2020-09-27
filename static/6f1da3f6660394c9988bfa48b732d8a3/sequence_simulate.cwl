class: CommandLineTool
id: sequence_simulate.cwl
inputs:
- id: in_genome
  doc: sample reads from these sequences
  type: string
  inputBinding:
    prefix: -genome
- id: in_circular
  doc: threat the sequences in G as circular
  type: boolean
  inputBinding:
    prefix: -circular
- id: in_genome_size
  doc: genome size to use for deciding coverage below
  type: long
  inputBinding:
    prefix: -genomesize
- id: in_coverage
  doc: generate approximately c coverage of output
  type: string
  inputBinding:
    prefix: -coverage
- id: in_n_reads
  doc: generate exactly n reads of output
  type: string
  inputBinding:
    prefix: -nreads
- id: in_n_bases
  doc: generate approximately n bases of output
  type: string
  inputBinding:
    prefix: -nbases
- id: in_distribution
  doc: "generate read length by sampling the distribution in file F\none column  -\
    \ each line is the length of a sequence\ntwo columns - each line has the 'length'\
    \ and 'number of sequences'"
  type: long
  inputBinding:
    prefix: -distribution
- id: in_length
  doc: '[-max]   (not implemented)'
  type: long
  inputBinding:
    prefix: -length
- id: in_output
  doc: (not implemented)
  type: string
  inputBinding:
    prefix: -output
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mode
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequence
- simulate
