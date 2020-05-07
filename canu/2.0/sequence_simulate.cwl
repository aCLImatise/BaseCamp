class: CommandLineTool
id: sequence_simulate.cwl
inputs:
- id: genome
  doc: sample reads from these sequences
  type: string
  inputBinding:
    prefix: -genome
- id: circular
  doc: treat the sequences in G as circular
  type: boolean
  inputBinding:
    prefix: -circular
- id: genome_size
  doc: genome size to use for deciding coverage below
  type: string
  inputBinding:
    prefix: -genomesize
- id: coverage
  doc: generate approximately c coverage of output
  type: string
  inputBinding:
    prefix: -coverage
- id: n_reads
  doc: generate exactly n reads of output
  type: string
  inputBinding:
    prefix: -nreads
- id: n_bases
  doc: generate approximately n bases of output
  type: string
  inputBinding:
    prefix: -nbases
- id: distribution
  doc: generate read length by sampling the distribution in file F one column  - each
    line is the length of a sequence two columns - each line has the 'length' and
    'number of sequences' if file F doesn't exist, use a built-in distribution ultra-long-nanopore
    pacbio pacbio-hifi
  type: string
  inputBinding:
    prefix: -distribution
- id: length
  doc: '[-max]   (not implemented)'
  type: long
  inputBinding:
    prefix: -length
- id: output
  doc: (not implemented)
  type: string
  inputBinding:
    prefix: -output
outputs: []
cwlVersion: v1.1
baseCommand:
- sequence
- simulate
