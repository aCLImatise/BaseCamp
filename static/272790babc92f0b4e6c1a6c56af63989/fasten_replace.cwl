class: CommandLineTool
id: fasten_replace.cwl
inputs:
- id: in_num_cpus
  doc: 'Number of CPUs (default: 1)'
  type: long?
  inputBinding:
    prefix: --numcpus
- id: in_paired_end
  doc: The input reads are interleaved paired-end
  type: boolean?
  inputBinding:
    prefix: --paired-end
- id: in_verbose
  doc: Print more status messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_find
  doc: "Regular expression (default: '.')"
  type: string?
  inputBinding:
    prefix: --find
- id: in_replace
  doc: String to replace each match
  type: string?
  inputBinding:
    prefix: --replace
- id: in_which
  doc: 'Which field to match on? ID, SEQ, QUAL. Default: SEQ'
  type: string?
  inputBinding:
    prefix: --which
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasten_replace
