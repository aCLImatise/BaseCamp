class: CommandLineTool
id: rgi_remove_duplicates.cwl
inputs:
- id: in_input
  doc: input fasta file
  type: File?
  inputBinding:
    prefix: --input
- id: in_card_annotation
  doc: card_annotation input fasta file
  type: File?
  inputBinding:
    prefix: --card_annotation
- id: in_output
  doc: output fasta file
  type: File?
  inputBinding:
    prefix: --output
- id: in_debug
  doc: debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output fasta file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- rgi
- remove_duplicates
