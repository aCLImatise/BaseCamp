class: CommandLineTool
id: correct.cwl
inputs:
- id: u
  doc: Output errors reads even if they can't be corrected, maintaining paired end
    reads.
  type: boolean
  inputBinding:
    prefix: -u
- id: headers
  doc: Output only the original read headers without correction messages
  type: boolean
  inputBinding:
    prefix: --headers
- id: log
  doc: Output a log of all corrections into *.log as 'quality position new_nt old_nt'
  type: boolean
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- correct
