class: CommandLineTool
id: run_MUSIC.csh.cwl
inputs:
- id: in_preprocess
  doc: '[Reads file path] [Output dir]'
  type: File
  inputBinding:
    prefix: -preprocess
- id: in_remove_duplicates
  doc: '[Preprocessed reads dir] [Sorted reads dir] [Pruned reads dir]'
  type: boolean
  inputBinding:
    prefix: -remove_duplicates
- id: in_get
  doc: '[relaxed/optimal]_[punctate/broad]_ERs [chip preprocessed dir] [input preprocessed
    dir] [Multi-mappability profile directory]'
  type: boolean
  inputBinding:
    prefix: -get_
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_preprocess
  doc: '[Reads file path] [Output dir]'
  type: File
  outputBinding:
    glob: $(inputs.in_preprocess)
cwlVersion: v1.1
baseCommand:
- run_MUSIC.csh
