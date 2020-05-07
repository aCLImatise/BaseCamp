class: CommandLineTool
id: metrics.cwl
inputs:
- id: p
  doc: 'Prefix for output wig files [default: metrics]'
  type: string
  inputBinding:
    prefix: -p
- id: n
  doc: 'Manually specify the number of assemblies in the alignment; if not, it is
    computed from the MAF [default: 0]'
  type: string
  inputBinding:
    prefix: -n
- id: t
  doc: 'Number of threads to use [default: 1].'
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- metrics
