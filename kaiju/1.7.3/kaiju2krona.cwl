class: CommandLineTool
id: kaiju2krona.cwl
inputs:
- id: i
  doc: Name of input file
  type: File
  inputBinding:
    prefix: -i
- id: o
  doc: Name of output file.
  type: File
  inputBinding:
    prefix: -o
- id: t
  doc: Name of nodes.dmp file
  type: File
  inputBinding:
    prefix: -t
- id: n
  doc: Name of names.dmp file
  type: File
  inputBinding:
    prefix: -n
- id: v
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: -v
- id: u
  doc: Include count for unclassified reads in output.
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- kaiju2krona
