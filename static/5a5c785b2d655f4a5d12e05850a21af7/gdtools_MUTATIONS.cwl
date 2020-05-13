class: CommandLineTool
id: gdtools_MUTATIONS.cwl
inputs:
- id: output
  doc: Path to output GD file with mutations predicted from evidence. (DEFAULT=output.gd)
  type: string
  inputBinding:
    prefix: --output
- id: reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: string
  inputBinding:
    prefix: --reference
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- MUTATIONS
