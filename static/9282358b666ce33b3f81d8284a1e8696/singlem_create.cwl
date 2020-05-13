class: CommandLineTool
id: singlem_create.cwl
inputs:
- id: debug
  doc: output debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: only output errors
  type: boolean
  inputBinding:
    prefix: --quiet
- id: full_help
  doc: display all help options
  type: boolean
  inputBinding:
    prefix: --full_help
- id: input_graft_m_package
  doc: input package
  type: File
  inputBinding:
    prefix: --input_graftm_package
- id: output_single_m_package
  doc: output package
  type: File
  inputBinding:
    prefix: --output_singlem_package
- id: hmm_position
  doc: position in the GraftM alignment HMM where the SingleM window starts
  type: long
  inputBinding:
    prefix: --hmm_position
- id: window_size
  doc: length of residues in the window, counting only those that match the HMM
  type: long
  inputBinding:
    prefix: --window_size
- id: force
  doc: overwrite output path if it already exists
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- singlem
- create
