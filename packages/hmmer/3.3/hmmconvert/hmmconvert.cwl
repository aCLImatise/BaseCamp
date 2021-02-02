class: CommandLineTool
id: ../../../hmmconvert.cwl
inputs:
- id: in_ascii_output_models
  doc: ': ascii:  output models in HMMER3 ASCII format  [default]'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_binary_output_models
  doc: ': binary: output models in HMMER3 binary format'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_hmmer_output_backward
  doc: ': HMMER2: output backward compatible HMMER2 ASCII format (ls mode)'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_out_fmt
  doc: ": choose output legacy 3.x file formats by name, such as '3/a'"
  type: File
  inputBinding:
    prefix: --outfmt
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_fmt
  doc: ": choose output legacy 3.x file formats by name, such as '3/a'"
  type: File
  outputBinding:
    glob: $(inputs.in_out_fmt)
cwlVersion: v1.1
baseCommand:
- hmmconvert
