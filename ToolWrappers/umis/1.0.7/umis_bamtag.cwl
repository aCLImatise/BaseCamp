class: CommandLineTool
id: umis_bamtag.cwl
inputs:
- id: in_sam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- umis
- bamtag
