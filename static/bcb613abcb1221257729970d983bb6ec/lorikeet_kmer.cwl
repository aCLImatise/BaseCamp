class: CommandLineTool
id: lorikeet_kmer.cwl
inputs:
- id: in_full_help
  doc: "-h, --help         Prints help information\n-V, --version      Prints version\
    \ information\n-v, --verbose"
  type: boolean
  inputBinding:
    prefix: --full-help
- id: in_flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lorikeet
- kmer
