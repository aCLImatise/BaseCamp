class: CommandLineTool
id: rsat_convert_background_model.cwl
inputs:
- id: in_convert_background_model
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_mmeme_inputoutputm
  doc: "\e[1mMEME (input/output)\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_models_dot
  doc: MEME background files can be generated with the program
  type: string
  inputBinding:
    position: 0
- id: in_mpatser_outputm
  doc: "\e[1mpatser (output)\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_formats_dot
  doc: Alternatively, the background model can be specified by combining
  type: string
  inputBinding:
    position: 0
- id: in_words_dot
  doc: "See \e[33moligo-analysis\e[0m for more details on this option"
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
- convert-background-model
