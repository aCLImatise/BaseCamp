class: CommandLineTool
id: kaiju_mkfmi.cwl
inputs:
- id: in_remove_cmd
  doc: "(string)\nCommand for deleting .bwt and .sa files (e.g. rm)\nValue:  NULL\
    \ (null)"
  type: boolean
  inputBinding:
    prefix: -removecmd
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kaiju-mkfmi
