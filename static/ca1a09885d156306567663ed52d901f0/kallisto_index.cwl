class: CommandLineTool
id: kallisto_index.cwl
inputs:
- id: in_index
  doc: Filename for the kallisto index to be constructed
  type: File
  inputBinding:
    prefix: --index
- id: in_km_er_size
  doc: "k-mer (odd) length (default: 31, max value: 31)\n--make-unique           Replace\
    \ repeated target names with unique names\n"
  type: long
  inputBinding:
    prefix: --kmer-size
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kallisto
- index
