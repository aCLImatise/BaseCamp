class: CommandLineTool
id: shrec.py.cwl
inputs:
- id: in_file
  doc: matrix file.
  type: string
  inputBinding:
    prefix: --infile
- id: cmm
  doc: generate cmm and xyz files
  type: boolean
  inputBinding:
    prefix: --cmm
- id: mtx
  doc: generate distance matrix file
  type: boolean
  inputBinding:
    prefix: --mtx
- id: show
  doc: display matplotlib 3D plot
  type: boolean
  inputBinding:
    prefix: --show
- id: dist
  doc: input is already a distance matrix
  type: boolean
  inputBinding:
    prefix: --dist
- id: verbose
  doc: print process info
  type: boolean
  inputBinding:
    prefix: --verbose
- id: strict
  doc: Replace zeros by sum of the matrix divided by the square of the number of rows
    (recommended for binary matrices). By default it uses half the minimum value
  type: boolean
  inputBinding:
    prefix: --strict
- id: scale
  doc: '[0] Average distance (nm) beetween two particles; by default no scalling is
    applied'
  type: string
  inputBinding:
    prefix: --scale
- id: fw
  doc: '[numpy] implementation to search shortest path using Floyd-Warshall can be
    one of "numpy", "cython" or "cythonP" (parallel version for very large matrices)'
  type: string
  inputBinding:
    prefix: --fw
outputs: []
cwlVersion: v1.1
baseCommand:
- shrec.py
