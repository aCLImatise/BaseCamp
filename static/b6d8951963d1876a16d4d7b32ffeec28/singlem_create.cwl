class: CommandLineTool
id: singlem_create.cwl
inputs:
- id: in_output_single_m_package
  doc: "PATH --hmm_position INTEGER --window_size INTEGER\n[--force]"
  type: File
  inputBinding:
    prefix: --output_singlem_package
- id: in_debug
  doc: output debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: only output errors
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_full_help
  doc: display all help options
  type: boolean
  inputBinding:
    prefix: --full_help
- id: in_hmm_position
  doc: "position in the GraftM alignment HMM where the SingleM\nwindow starts"
  type: long
  inputBinding:
    prefix: --hmm_position
- id: in_window_size
  doc: "length of residues in the window, counting only those\nthat match the HMM"
  type: long
  inputBinding:
    prefix: --window_size
- id: in_force
  doc: overwrite output path if it already exists
  type: File
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: overwrite output path if it already exists
  type: File
  outputBinding:
    glob: $(inputs.in_force)
cwlVersion: v1.1
baseCommand:
- singlem
- create
