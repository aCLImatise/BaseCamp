class: CommandLineTool
id: create_datauri.cwl
inputs:
- id: in_file_type
  doc: type of file to be converted to data uri
  type: File
  inputBinding:
    prefix: --filetype
- id: in_region
  doc: "genomic region to be converted in the form chr:start-\nstop\n"
  type: string
  inputBinding:
    prefix: --region
- id: in_filename
  doc: name of file to be converted to data uri
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- create_datauri
