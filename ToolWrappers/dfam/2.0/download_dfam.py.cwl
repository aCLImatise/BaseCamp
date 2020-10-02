class: CommandLineTool
id: download_dfam.py.cwl
inputs:
- id: in_output
  doc: Give an output destination /home/user/Dfam.hmm.gz
  type: string
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- download-dfam.py
