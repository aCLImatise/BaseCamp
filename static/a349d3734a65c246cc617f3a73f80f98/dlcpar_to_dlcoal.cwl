class: CommandLineTool
id: dlcpar_to_dlcoal.cwl
inputs:
- id: in_stree
  doc: species tree file in newick format
  type: File?
  inputBinding:
    prefix: --stree
- id: in_s_map
  doc: gene to species map
  type: string?
  inputBinding:
    prefix: --smap
- id: in_input_ext
  doc: 'input file extension (default: ".tree")'
  type: File?
  inputBinding:
    prefix: --inputext
- id: in_output_ext
  doc: 'output file extension (default: "")'
  type: File?
  inputBinding:
    prefix: --outputext
- id: in_dlc_par_to_dl_coal
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_utility
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_converting
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_dlc_par
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_reconciliations
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_dl_coal
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_ext
  doc: 'output file extension (default: "")'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_ext)
hints: []
cwlVersion: v1.1
baseCommand:
- dlcpar_to_dlcoal
