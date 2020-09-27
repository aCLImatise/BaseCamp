class: CommandLineTool
id: stitch.cwl
inputs:
- id: in_file_containing_first_read
  doc: The file containing the first read of each pair
  type: File
  inputBinding:
    prefix: '-1'
- id: in_file_containing_second_read
  doc: The file containing the second read of each pair
  type: File
  inputBinding:
    prefix: '-2'
- id: in_out_ie
  doc: Reverse complement the first mate, instead of the
  type: boolean
  inputBinding:
    prefix: --outie
- id: in_second
  doc: -?, --help                 Give this help list
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stitch
