class: CommandLineTool
id: ../../../o_sequence_distances.cwl
inputs:
- id: output_file
  doc: Output file to store results
  type: File
  inputBinding:
    prefix: --output_file
- id: align
  doc: If sequences require pairwise alignment
  type: boolean
  inputBinding:
    prefix: --align
- id: fast_a
  doc: FASTA file that contains -representative?- sequences
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- o-sequence-distances
