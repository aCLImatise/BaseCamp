class: CommandLineTool
id: bl_interleave.cwl
inputs:
- id: in_specify_multiple_files
  doc: specify multiple INPUT files
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_specify_output_file
  doc: specify the OUTPUT file
  type: File?
  inputBinding:
    prefix: -o
- id: in_reformat_paired_read
  doc: "reformat paired read ID lines by replacing everything after the first\nspace,\
    \ tab or / with the specified SEP followed by the input file number\n(e.g. '/'\
    \ will use /1 as the ID suffix for the first input file, etc.)"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_interleave
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_output_file
  doc: specify the OUTPUT file
  type: File?
  outputBinding:
    glob: $(inputs.in_specify_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- bl-interleave
