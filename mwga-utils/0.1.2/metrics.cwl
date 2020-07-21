class: CommandLineTool
id: ../../../metrics.cwl
inputs:
- id: prefix_output_wig
  doc: 'Prefix for output wig files [default: metrics]'
  type: string
  inputBinding:
    prefix: -p
- id: manually_specify_number
  doc: 'Manually specify the number of assemblies in the alignment; if not, it is
    computed from the MAF [default: 0]'
  type: string
  inputBinding:
    prefix: -n
- id: number_threads_use
  doc: 'Number of threads to use [default: 1].'
  type: string
  inputBinding:
    prefix: -t
- id: maf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- metrics
