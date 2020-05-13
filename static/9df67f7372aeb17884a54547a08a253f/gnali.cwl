class: CommandLineTool
id: gnali.cwl
inputs:
- id: gn_ali
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: 'File of genes to test. Accepted formats: csv, txt'
  type: string
  inputBinding:
    prefix: --input_file
- id: output_dir
  doc: 'Name of output directory. Default: results-ID/'
  type: string
  inputBinding:
    prefix: --output_dir
- id: force
  doc: Force existing output folder to be overwritten
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- gnali
