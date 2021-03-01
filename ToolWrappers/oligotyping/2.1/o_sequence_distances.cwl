class: CommandLineTool
id: o_sequence_distances.cwl
inputs:
- id: in_output_file
  doc: Output file to store results
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_align
  doc: If sequences require pairwise alignment
  type: boolean?
  inputBinding:
    prefix: --align
- id: in_fast_a
  doc: FASTA file that contains -representative?- sequences
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file to store results
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- o-sequence-distances
