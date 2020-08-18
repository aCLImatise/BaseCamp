class: CommandLineTool
id: ../../../cmconvert.cwl
inputs:
- id: ascii_output_models
  doc: ': ascii:  output models in INFERNAL 1.1 ASCII format  [default]'
  type: boolean
  inputBinding:
    prefix: -a
- id: binary_output_models
  doc: ': binary: output models in INFERNAL 1.1 binary format'
  type: boolean
  inputBinding:
    prefix: -b
- id: output_backward_compatible
  doc: ': output backward compatible Infernal v0.7-->v1.0.2 ASCII format'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: save_cm_file
  doc: ': save CM file to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: ml_hmm
  doc: ': output maximum likelihood HMM for CM in HMMER3 format'
  type: boolean
  inputBinding:
    prefix: --mlhmm
- id: f_hmm
  doc: ': output filter HMM for CM in HMMER3 format'
  type: boolean
  inputBinding:
    prefix: --fhmm
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- cmconvert
