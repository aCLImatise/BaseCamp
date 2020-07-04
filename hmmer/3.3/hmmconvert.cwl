class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hmmconvert.cwl
inputs:
- id: ascii_output_models
  doc: ': ascii:  output models in HMMER3 ASCII format  [default]'
  type: boolean
  inputBinding:
    prefix: -a
- id: binary_output_models
  doc: ': binary: output models in HMMER3 binary format'
  type: boolean
  inputBinding:
    prefix: -b
- id: hmmer_output_mode
  doc: ': HMMER2: output backward compatible HMMER2 ASCII format (ls mode)'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: out_fmt
  doc: ": choose output legacy 3.x file formats by name, such as '3/a'"
  type: string
  inputBinding:
    prefix: --outfmt
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmconvert
