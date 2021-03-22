class: CommandLineTool
id: log_and_glog_transformation.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: string?
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File?
  inputBinding:
    prefix: --design
- id: in_uniqid
  doc: Name of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --uniqID
- id: in_transformation
  doc: Type of transformation to use (log vs glog)
  type: string?
  inputBinding:
    prefix: --transformation
- id: in_log_base
  doc: Base of the logarithm to use
  type: string?
  inputBinding:
    prefix: --log_base
- id: in_lambda_value
  doc: "Lambda parameter which is used only for G-Log\ntransformation."
  type: string?
  inputBinding:
    prefix: --lambda_value
- id: in_o_name
  doc: Output file name.
  type: File?
  inputBinding:
    prefix: --oname
- id: in_debug
  doc: Add debugging log output.
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o_name
  doc: Output file name.
  type: File?
  outputBinding:
    glob: $(inputs.in_o_name)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secimtools:21.3.4.2--py_0
cwlVersion: v1.1
baseCommand:
- log_and_glog_transformation.py
