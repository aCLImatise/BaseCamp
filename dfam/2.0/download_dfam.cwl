class: CommandLineTool
id: download_dfam.py.cwl
inputs:
- id: output
  doc: Give an output destination /home/user/Dfam.hmm.gz
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- download-dfam.py
