class: CommandLineTool
id: ../../../GTFupdate.cwl
inputs:
- id: in_gtf_file
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- GTFupdate
