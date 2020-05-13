class: CommandLineTool
id: fasten_replace.cwl
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
- id: find
  doc: "Regular expression (default: '.')"
  type: string
  inputBinding:
    prefix: --find
- id: replace
  doc: String to replace each match
  type: string
  inputBinding:
    prefix: --replace
- id: which
  doc: 'Which field to match on? ID, SEQ, QUAL. Default: SEQ'
  type: string
  inputBinding:
    prefix: --which
outputs: []
cwlVersion: v1.1
baseCommand:
- fasten_replace
