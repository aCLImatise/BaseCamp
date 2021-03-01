class: CommandLineTool
id: diri_sampler.cwl
inputs:
- id: in_a
  doc: not compat. with -k
  type: string?
  inputBinding:
    prefix: -a
- id: in_k
  doc: not compat. with -K
  type: long?
  inputBinding:
    prefix: -k
- id: in_files
  doc: -i <input data file>
  type: string
  inputBinding:
    position: 0
- id: in_parameters
  doc: -j <sampling iterations>
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- diri_sampler
