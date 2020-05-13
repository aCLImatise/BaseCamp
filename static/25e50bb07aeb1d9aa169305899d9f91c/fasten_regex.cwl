class: CommandLineTool
id: fasten_regex.cwl
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
- id: regex
  doc: "Regular expression (default: '.')"
  type: string
  inputBinding:
    prefix: --regex
- id: which
  doc: 'Which field to match on? ID, SEQ, QUAL. Default: SEQ'
  type: string
  inputBinding:
    prefix: --which
outputs: []
cwlVersion: v1.1
baseCommand:
- fasten_regex
