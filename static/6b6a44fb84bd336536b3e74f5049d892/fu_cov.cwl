class: CommandLineTool
id: fu_cov.cwl
inputs:
- id: in_min_cov
  doc: 'Minimum coverage [default: 0.0]'
  type: double?
  inputBinding:
    prefix: --min-cov
- id: in_max_cov
  doc: 'Maximum coverage [default: 0.0]'
  type: double?
  inputBinding:
    prefix: --max-cov
- id: in_min_len
  doc: 'Minimum contig length [default: 0]'
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_max_len
  doc: 'Maximum contig length [default: 0]'
  type: long?
  inputBinding:
    prefix: --max-len
- id: in_top
  doc: 'Print the first TOP sequences when using --sort [default: 0]'
  type: long?
  inputBinding:
    prefix: --top
- id: in_sort
  doc: Store contigs in memory and sort them by descending coverage
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_print_verbose_log
  doc: Print verbose log
  type: boolean?
  inputBinding:
    prefix: --verbose
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
- id: in_var_9
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
  dockerPull: quay.io/biocontainers/seqfu:0.9.0--h38613fd_1
cwlVersion: v1.1
baseCommand:
- fu-cov
