class: CommandLineTool
id: remove_redundant_variations_reference.fasta.cwl
inputs:
- id: variants_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- remove-redundant-variations
- reference.fasta
