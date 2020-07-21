class: CommandLineTool
id: ../../../secapr_add_missing_sequences.cwl
inputs:
- id: input
  doc: The directory containing fasta alignments
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output directory where results will be safed
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- secapr
- add_missing_sequences
