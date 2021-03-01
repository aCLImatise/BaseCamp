class: CommandLineTool
id: HomologyByXCorrSlave.cwl
inputs:
- id: in_master
  doc: '<string> : name of the submit host'
  type: boolean?
  inputBinding:
    prefix: -master
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- HomologyByXCorrSlave
