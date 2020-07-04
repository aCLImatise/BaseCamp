class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/protein_alignment_from_nucleotides.cwl
inputs:
- id: nucleotide_alignment_mafft
  doc: nucleotide alignment with MAFFT
  type: boolean
  inputBinding:
    prefix: -n
- id: verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- protein_alignment_from_nucleotides
