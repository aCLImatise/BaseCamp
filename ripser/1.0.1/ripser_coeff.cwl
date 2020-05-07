class: CommandLineTool
id: ripser_coeff.cwl
inputs:
- id: rip_ser
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: format
  doc: 'use the specified file format for the input. Options are: lower-distance (lower
    triangular distance matrix; default) upper-distance (upper triangular distance
    matrix) distance       (full distance matrix) point-cloud    (point cloud in Euclidean
    space) dipha          (distance matrix in DIPHA file format)'
  type: boolean
  inputBinding:
    prefix: --format
- id: dim
  doc: compute persistent homology up to dimension <k>
  type: string
  inputBinding:
    prefix: --dim
- id: threshold
  doc: compute Rips complexes up to diameter <t>
  type: string
  inputBinding:
    prefix: --threshold
- id: modulus
  doc: compute homology with coefficients in the prime field Z/<p>Z
  type: string
  inputBinding:
    prefix: --modulus
outputs: []
cwlVersion: v1.1
baseCommand:
- ripser-coeff
