class: CommandLineTool
id: ../../../compute.cwl
inputs:
- id: use_total_segregating
  doc: ': use the total # of segregating sites, rather than # of mutations'
  type: boolean
  inputBinding:
    prefix: -n
- id: verbose_progress_reporting
  doc: ': verbose progress reporting to standard error'
  type: boolean
  inputBinding:
    prefix: -v
- id: _pretty_output
  doc: ': pretty output'
  type: boolean
  inputBinding:
    prefix: -V
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- compute
