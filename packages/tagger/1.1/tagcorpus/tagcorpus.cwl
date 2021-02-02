class: CommandLineTool
id: tagcorpus.cwl
inputs:
- id: in_types
  doc: "--entities=filename\n--names=filename"
  type: File
  inputBinding:
    prefix: --types
- id: in_documents
  doc: "Read input from file instead of from STDIN\n--groups=filename\n--type-pairs=filename\
    \   Types of pairs that are allowed\n--stopwords=filename\n--autodetect Turn autodetect\
    \ on\n--tokenize-characters Turn single-character tokenization on\n--document-weight=1.00\n\
    --paragraph-weight=2.00\n--sentence-weight=0.20\n--normalization-factor=0.60\n\
    --threads=1\n--out-matches=filename\n--out-pairs=filename\n--out-segments=filename\n"
  type: File
  inputBinding:
    prefix: --documents
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tagcorpus
