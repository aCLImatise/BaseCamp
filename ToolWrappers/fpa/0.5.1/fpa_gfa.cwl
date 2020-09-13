class: CommandLineTool
id: ../../../fpa_gfa.cwl
inputs:
- id: in_containment
  doc: Keep containment overlap
  type: boolean
  inputBinding:
    prefix: --containment
- id: in_internal_match
  doc: Keep internal match overlap
  type: boolean
  inputBinding:
    prefix: --internalmatch
- id: in_output
  doc: Write mapping passing filter in gfa1 graph format in path passed as parameter
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fpa
- gfa
