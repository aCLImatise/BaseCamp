class: CommandLineTool
id: obspectrophore.cwl
inputs:
- id: in__input_file
  doc: '[required]: input file'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__normalization
  doc: '[optional]: normalization'
  type: boolean
  inputBinding:
    prefix: -n
- id: in__accuracy
  doc: '[optional]: accuracy'
  type: boolean
  inputBinding:
    prefix: -a
- id: in__stereo_treatment
  doc: '[optional]: stereo treatment'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__resolution
  doc: '[optional]: resolution'
  type: boolean
  inputBinding:
    prefix: -r
- id: in__implementation_details
  doc: '[optional]: implementation details'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_parameters
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- obspectrophore
