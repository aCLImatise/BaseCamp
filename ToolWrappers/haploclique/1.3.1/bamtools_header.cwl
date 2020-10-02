class: CommandLineTool
id: bamtools_header.cwl
inputs:
- id: in_in
  doc: the input BAM file(s) [stdin]
  type: File
  inputBinding:
    prefix: -in
- id: in_list
  doc: "the input BAM file list, one\nline per file"
  type: File
  inputBinding:
    prefix: -list
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bamtools
- header
