class: CommandLineTool
id: mothur.cwl
inputs:
- id: in_path_to_old_version
  doc: 'for example: yourusername$ which mothur'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mothur
