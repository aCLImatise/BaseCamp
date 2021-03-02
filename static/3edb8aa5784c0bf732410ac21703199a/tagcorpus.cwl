class: CommandLineTool
id: tagcorpus.cwl
inputs:
- id: in_documents
  doc: Read input from file instead of from STDIN
  type: File?
  inputBinding:
    prefix: --documents
- id: in_type_pairs
  doc: Types of pairs that are allowed
  type: File?
  inputBinding:
    prefix: --type-pairs
- id: in_autodetect
  doc: autodetect on
  type: File?
  inputBinding:
    prefix: --autodetect
- id: in_tokenize_characters
  doc: single-character tokenization on
  type: string?
  inputBinding:
    prefix: --tokenize-characters
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tagcorpus
