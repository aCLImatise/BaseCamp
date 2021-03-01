class: CommandLineTool
id: revFasta.cwl
inputs:
- id: in_reverse_complement_d
  doc: Reverse complement the specified id only
  type: string?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- revFasta
