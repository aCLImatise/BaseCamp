class: CommandLineTool
id: flowcraft_inspect.cwl
inputs:
- id: in_specify_trace_file
  doc: Specify the nextflow trace file.
  type: File?
  inputBinding:
    prefix: -i
- id: in_set_refresh_frequency
  doc: Set the refresh frequency for the continuous inspect
  type: string?
  inputBinding:
    prefix: -r
- id: in_url
  doc: Specify the URL to where the data should be broadcast
  type: string?
  inputBinding:
    prefix: --url
- id: in_pretty
  doc: "Pretty inspection mode that removes usual reporting\nprocesses.\n"
  type: boolean?
  inputBinding:
    prefix: --pretty
- id: in_functions
  doc: -m {overview,broadcast}, --mode {overview,broadcast}
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- flowcraft
- inspect
