class: CommandLineTool
id: rsat_matrix_distrib.cwl
inputs:
- id: in_bg_format_dot_supported
  doc: ': oligo-analysis, MotifSampler, meme. Default is:'
  type: boolean?
  inputBinding:
    prefix: -bg_format.Supported
- id: in_matrix_distrib
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: PSSM
  type: string
  inputBinding:
    position: 0
- id: in_oligo_analysis_dot
  doc: "For a description of available format, see \e[33mconvert-backgound-model"
  type: string
  inputBinding:
    position: 0
- id: in_details_dot
  doc: "\e[1m-bgfile background_file\e[0m\nBackground model file."
  type: string
  inputBinding:
    position: 0
- id: in_convert_background_model_dot
  doc: "\e[1m-bg_pseudo #\e[0m"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- matrix-distrib
