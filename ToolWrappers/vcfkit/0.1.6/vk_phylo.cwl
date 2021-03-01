class: CommandLineTool
id: vk_phylo.cwl
inputs:
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vcf
  doc: ''
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
- vk
- phylo
