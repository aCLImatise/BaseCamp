class: CommandLineTool
id: triangulateParallel.cwl
inputs:
- id: strfile
  doc: Structure file name
  type: boolean
  inputBinding:
    prefix: -strFile
- id: anytime_triangulate
  doc: Total boundary/triangulate time
  type: boolean
  inputBinding:
    prefix: -anyTimeTriangulate
- id: boundary_anytime
  doc: Boundary search time
  type: boolean
  inputBinding:
    prefix: -boundaryAnyTime
- id: triangulate_anytime
  doc: Triangulation search time
  type: boolean
  inputBinding:
    prefix: -triangulateAnyTime
- id: other
  doc: Other arguments to gmtkTriangulate
  type: boolean
  inputBinding:
    prefix: -other
outputs: []
cwlVersion: v1.1
baseCommand:
- triangulateParallel
