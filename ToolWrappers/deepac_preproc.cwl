class: CommandLineTool
id: deepac_preproc.cwl
inputs:
- id: in_config
  doc: Preprocessing config file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deepac
- preproc
