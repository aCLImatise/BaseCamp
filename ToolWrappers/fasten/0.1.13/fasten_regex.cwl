class: CommandLineTool
id: fasten_regex.cwl
inputs:
- id: in_num_cpus
  doc: 'Number of CPUs (default: 1)'
  type: long
  inputBinding:
    prefix: --numcpus
- id: in_paired_end
  doc: The input reads are interleaved paired-end
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: in_verbose
  doc: Print more status messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_regex
  doc: "Regular expression (default: '.')"
  type: string
  inputBinding:
    prefix: --regex
- id: in_which
  doc: 'Which field to match on? ID, SEQ, QUAL. Default: SEQ'
  type: string
  inputBinding:
    prefix: --which
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasten_regex
