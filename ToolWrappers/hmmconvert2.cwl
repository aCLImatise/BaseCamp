class: CommandLineTool
id: hmmconvert2.cwl
inputs:
- id: in_convert_file_default
  doc: ': convert to HMMER ASCII file (the default)'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_convert_hmmer_binary
  doc: ': convert to HMMER binary file'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_convert_prf_format
  doc: ': convert to GCG Profile .prf format'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_convert_compugen_extended
  doc: ': convert to Compugen extended .eprf profile format'
  type: boolean
  inputBinding:
    prefix: -P
- id: in_append_mode_append
  doc: ': append mode; append to <new hmm file>'
  type: boolean
  inputBinding:
    prefix: -A
- id: in_force_mode_allow
  doc: ': force mode; allow overwriting of existing files'
  type: boolean
  inputBinding:
    prefix: -F
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_hmm_convert
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_old_hmm_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_new_hmm_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmmconvert2
