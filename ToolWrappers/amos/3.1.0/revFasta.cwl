class: CommandLineTool
id: revFasta.cwl
inputs:
- id: in_reverse_complement_specified
  doc: Reverse complement the specified id only
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- revFasta
