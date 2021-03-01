class: CommandLineTool
id: bamtools_count.cwl
inputs:
- id: in_in
  doc: the input BAM file(s) [stdin]
  type: File?
  inputBinding:
    prefix: -in
- id: in_list
  doc: "the input BAM file list, one\nline per file"
  type: File?
  inputBinding:
    prefix: -list
- id: in_region
  doc: "genomic region. Index file is\nrecommended for better performance, and is\n\
    used automatically if it exists. See\n'bamtools help index' for more details on\n\
    creating one"
  type: File?
  inputBinding:
    prefix: -region
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bamtools
- count
