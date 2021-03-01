class: CommandLineTool
id: akt_relatives.cwl
inputs:
- id: in_km_in
  doc: ':                     threshold for relatedness (0.05)'
  type: boolean?
  inputBinding:
    prefix: --kmin
- id: in_its
  doc: ':                      number of iterations to find unrelated (10)'
  type: boolean?
  inputBinding:
    prefix: --its
- id: in_graph_out
  doc: ':         if present output pedigree graph files'
  type: boolean?
  inputBinding:
    prefix: --graphout
- id: in_prefix
  doc: ':                   output file prefix (out)'
  type: File?
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: ':                   output file prefix (out)'
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- akt
- relatives
