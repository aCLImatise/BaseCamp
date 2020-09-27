class: CommandLineTool
id: Chromosemble.cwl
inputs:
- id: in_string_target_file
  doc: '<string> : target fasta file (in chromosome coordinates)'
  type: boolean
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Chromosemble
