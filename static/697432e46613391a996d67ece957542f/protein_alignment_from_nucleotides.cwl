class: CommandLineTool
id: protein_alignment_from_nucleotides.cwl
inputs:
- id: in_nucleotide_alignment_mafft
  doc: nucleotide alignment with MAFFT
  type: boolean
  inputBinding:
    prefix: -n
- id: in_verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- protein_alignment_from_nucleotides
