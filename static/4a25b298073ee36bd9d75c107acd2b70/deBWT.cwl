class: CommandLineTool
id: deBWT.cwl
inputs:
- id: in_output_bwt_filebinary
  doc: ': output bwt file(binary)'
  type: File
  inputBinding:
    prefix: -o
- id: in_optional_maximum_thread
  doc: '(optional): maximum thread number(default 8)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_optional_kmer_length
  doc: '(optional): k-mer length (from 12 to 32, default 32)'
  type: boolean
  inputBinding:
    prefix: -k
- id: in__jellyfish_directory
  doc: ': jellyfish directory'
  type: boolean
  inputBinding:
    prefix: -j
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bwt_filebinary
  doc: ': output bwt file(binary)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_bwt_filebinary)
cwlVersion: v1.1
baseCommand:
- deBWT
