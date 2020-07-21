class: CommandLineTool
id: ../../../create_datauri.cwl
inputs:
- id: file_type
  doc: type of file to be converted to data uri
  type: File
  inputBinding:
    prefix: --filetype
- id: region
  doc: genomic region to be converted in the form chr:start- stop
  type: string
  inputBinding:
    prefix: --region
- id: filename
  doc: name of file to be converted to data uri
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- create_datauri
