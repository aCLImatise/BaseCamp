class: CommandLineTool
id: ../../../tagcorpus.cwl
inputs:
- id: in_types
  doc: ''
  type: File
  inputBinding:
    prefix: --types
- id: in_entities
  doc: ''
  type: File
  inputBinding:
    prefix: --entities
- id: in_names
  doc: ''
  type: File
  inputBinding:
    prefix: --names
- id: in_documents
  doc: Read input from file instead of from STDIN
  type: File
  inputBinding:
    prefix: --documents
- id: in_groups
  doc: ''
  type: File
  inputBinding:
    prefix: --groups
- id: in_type_pairs
  doc: Types of pairs that are allowed
  type: File
  inputBinding:
    prefix: --type-pairs
- id: in_stopwords
  doc: ''
  type: File
  inputBinding:
    prefix: --stopwords
- id: in_autodetect
  doc: autodetect on
  type: string
  inputBinding:
    prefix: --autodetect
- id: in_tokenize_characters
  doc: single-character tokenization on
  type: string
  inputBinding:
    prefix: --tokenize-characters
- id: in_document_weight
  doc: ''
  type: long
  inputBinding:
    prefix: --document-weight
- id: in_paragraph_weight
  doc: ''
  type: long
  inputBinding:
    prefix: --paragraph-weight
- id: in_sentence_weight
  doc: ''
  type: long
  inputBinding:
    prefix: --sentence-weight
- id: in_normalization_factor
  doc: ''
  type: long
  inputBinding:
    prefix: --normalization-factor
- id: in_threads
  doc: ''
  type: long
  inputBinding:
    prefix: --threads
- id: in_out_matches
  doc: ''
  type: File
  inputBinding:
    prefix: --out-matches
- id: in_out_pairs
  doc: ''
  type: File
  inputBinding:
    prefix: --out-pairs
- id: in_out_segments
  doc: ''
  type: File
  inputBinding:
    prefix: --out-segments
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tagcorpus
