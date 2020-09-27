class: CommandLineTool
id: bamtools_2.4.1_header.cwl
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
- id: in_bam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_header
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
- bamtools-2.4.1
- header
