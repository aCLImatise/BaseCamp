class: CommandLineTool
id: protein_alignment_from_nucleotides.cwl
inputs:
- id: n
  doc: nucleotide alignment with MAFFT
  type: boolean
  inputBinding:
    prefix: -n
- id: v
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- protein_alignment_from_nucleotides
