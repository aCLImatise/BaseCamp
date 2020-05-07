class: CommandLineTool
id: log_and_glog_transformation.py.cwl
inputs:
- id: input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: design
  doc: Design file.
  type: string
  inputBinding:
    prefix: --design
- id: uniqid
  doc: Name of the column with unique identifiers.
  type: string
  inputBinding:
    prefix: --uniqID
- id: transformation
  doc: Type of transformation to use (log vs glog)
  type: string
  inputBinding:
    prefix: --transformation
- id: log_base
  doc: Base of the logarithm to use
  type: string
  inputBinding:
    prefix: --log_base
- id: lambda_value
  doc: Lambda parameter which is used only for G-Log transformation.
  type: string
  inputBinding:
    prefix: --lambda_value
- id: o_name
  doc: Output file name.
  type: string
  inputBinding:
    prefix: --oname
- id: debug
  doc: Add debugging log output.
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- log_and_glog_transformation.py
