class: CommandLineTool
id: ../../../fasten_shuffle.cwl
inputs:
- id: num_cpus
  doc: 'Number of CPUs (default: 1)'
  type: long
  inputBinding:
    prefix: --numcpus
- id: paired_end
  doc: The input reads are interleaved paired-end
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: verbose
  doc: Print more status messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: de_shuffle
  doc: Deshuffle reads from stdin
  type: boolean
  inputBinding:
    prefix: --deshuffle
- id: one
  doc: Forward reads. If deshuffling, reads are written to this file.
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: Forward reads. If deshuffling, reads are written to this file.
  type: string
  inputBinding:
    prefix: '-2'
outputs: []
cwlVersion: v1.1
baseCommand:
- fasten_shuffle
