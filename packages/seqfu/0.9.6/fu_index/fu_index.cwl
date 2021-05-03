class: CommandLineTool
id: fu_index.cwl
inputs:
- id: in_max_reads
  doc: 'Evaluate INT number of reads [default: 1000]'
  type: long?
  inputBinding:
    prefix: --max-reads
- id: in_min_ratio
  doc: 'Minimum ratio of matches of the top index [default: 0.85]'
  type: double?
  inputBinding:
    prefix: --min-ratio
- id: in_print_verbose_log
  doc: Print verbose log
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_print
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_show
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_6
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqfu:0.9.6--h38613fd_0
cwlVersion: v1.1
baseCommand:
- fu-index
