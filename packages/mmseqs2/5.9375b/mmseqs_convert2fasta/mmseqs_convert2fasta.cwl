class: CommandLineTool
id: mmseqs_convert2fasta.cwl
inputs:
- id: in_use_header_file
  doc: false           use the ffindex header file instead of the body to map the
    entry keys
  type: boolean
  inputBinding:
    prefix: --use-header-file
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mmseqs
- convert2fasta
