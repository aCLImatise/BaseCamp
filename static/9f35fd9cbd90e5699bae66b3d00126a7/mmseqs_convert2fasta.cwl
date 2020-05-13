class: CommandLineTool
id: mmseqs_convert2fasta.cwl
inputs:
- id: use_header_file
  doc: false           use the ffindex header file instead of the body to map the
    entry keys
  type: boolean
  inputBinding:
    prefix: --use-header-file
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- convert2fasta
