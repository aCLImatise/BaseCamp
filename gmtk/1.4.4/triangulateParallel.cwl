#!/usr/bin/env cwl-runner

baseCommand:
- triangulateParallel
class: CommandLineTool
cwlVersion: v1.0
id: triangulateparallel
inputs:
- doc: Structure file name
  id: strfile
  inputBinding:
    prefix: -strFile
  type: boolean
- doc: Total boundary/triangulate time
  id: anytime_triangulate
  inputBinding:
    prefix: -anyTimeTriangulate
  type: boolean
- doc: Boundary search time
  id: boundary_anytime
  inputBinding:
    prefix: -boundaryAnyTime
  type: boolean
- doc: Triangulation search time
  id: triangulate_anytime
  inputBinding:
    prefix: -triangulateAnyTime
  type: boolean
- doc: Other arguments to gmtkTriangulate
  id: other
  inputBinding:
    prefix: -other
  type: boolean
