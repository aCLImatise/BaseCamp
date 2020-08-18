class: CommandLineTool
id: ../../../hmmconvert2.cwl
inputs:
- id: convert_hmmer_ascii
  doc: ': convert to HMMER ASCII file (the default)'
  type: boolean
  inputBinding:
    prefix: -a
- id: convert_hmmer_binary
  doc: ': convert to HMMER binary file'
  type: boolean
  inputBinding:
    prefix: -b
- id: convert_gcg_profile
  doc: ': convert to GCG Profile .prf format'
  type: boolean
  inputBinding:
    prefix: -p
- id: convert_compugen_extended
  doc: ': convert to Compugen extended .eprf profile format'
  type: boolean
  inputBinding:
    prefix: -P
- id: append_mode_append
  doc: ': append mode; append to <new hmm file>'
  type: boolean
  inputBinding:
    prefix: -A
- id: force_mode_allow
  doc: ': force mode; allow overwriting of existing files'
  type: boolean
  inputBinding:
    prefix: -F
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: hmm_convert
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: old_hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: new_hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmconvert2
