class: CommandLineTool
id: fasten_sample.cwl
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
- id: frequency
  doc: 'Frequency of sequences to print, 0 to 1. Default: 1'
  type: double
  inputBinding:
    prefix: --frequency
outputs: []
cwlVersion: v1.1
baseCommand:
- fasten_sample
