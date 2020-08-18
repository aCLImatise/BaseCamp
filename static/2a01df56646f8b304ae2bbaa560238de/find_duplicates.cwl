class: CommandLineTool
id: ../../../find_duplicates.cwl
inputs:
- id: nuc_me_rpath
  doc: Path to the 'nucmer' executable.
  type: string
  inputBinding:
    prefix: --nucmerpath
- id: reference
  doc: Path to the reference fasta file.
  type: string
  inputBinding:
    prefix: --reference
outputs: []
cwlVersion: v1.1
baseCommand:
- find_duplicates
