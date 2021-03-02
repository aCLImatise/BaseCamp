class: CommandLineTool
id: fu_cov.cwl
inputs:
- id: in_sort
  doc: Store contigs in memory, and sort them by descending coverage
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_min_cov
  doc: 'Minimum coverage (default: 0.0)'
  type: long?
  inputBinding:
    prefix: --min-cov
- id: in_min_len
  doc: 'Minimum length (default: 0)'
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_max_cov
  doc: 'Maximum coverage (default: 0.0)'
  type: long?
  inputBinding:
    prefix: --max-cov
- id: in_max_len
  doc: 'Maximum length (default: 0)'
  type: long?
  inputBinding:
    prefix: --max-len
- id: in_top
  doc: 'Print the first TOP sequences (passing filters) when using --sort (default:
    10)'
  type: long?
  inputBinding:
    prefix: --top
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqfu:0.8.7--hed695b0_0
cwlVersion: v1.1
baseCommand:
- fu-cov
