class: CommandLineTool
id: singlem_regenerate.cwl
inputs:
- id: in_debug
  doc: output debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: only output errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_full_help
  doc: display all help options
  type: boolean?
  inputBinding:
    prefix: --full_help
- id: in_input_single_m_package
  doc: input package
  type: File?
  inputBinding:
    prefix: --input_singlem_package
- id: in_output_single_m_package
  doc: output package
  type: File?
  inputBinding:
    prefix: --output_singlem_package
- id: in_intermediate_archaea_graft_m_package
  doc: --intermediate_bacteria_graftm_package
  type: string
  inputBinding:
    position: 0
- id: in_intermediate_bacteria_graft_m_package
  doc: --input_taxonomy INPUT_TAXONOMY
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- singlem
- regenerate
