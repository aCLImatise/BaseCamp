class: CommandLineTool
id: vtools_filter.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: Path to input VCF file  [required]
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: Path to output (filtered) VCF file [required]
  type: File
  inputBinding:
    prefix: --output
- id: trash
  doc: Path to trash VCF file  [required]
  type: File
  inputBinding:
    prefix: --trash
- id: params_file
  doc: Path to filter params json  [required]
  type: File
  inputBinding:
    prefix: --params-file
- id: index_sample
  doc: Name of index sample  [required]
  type: string
  inputBinding:
    prefix: --index-sample
- id: immediate_return
  doc: / --no-immediate-return Immediately write filters to file upon hitting one
    filter criterium. Default = True
  type: boolean
  inputBinding:
    prefix: --immediate-return
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools-filter
