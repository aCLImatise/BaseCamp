class: CommandLineTool
id: ripser_coeff.cwl
inputs:
- id: in_format
  doc: "use the specified file format for the input. Options are:\nlower-distance\
    \ (lower triangular distance matrix; default)\nupper-distance (upper triangular\
    \ distance matrix)\ndistance       (full distance matrix)\npoint-cloud    (point\
    \ cloud in Euclidean space)\ndipha          (distance matrix in DIPHA file format)"
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_dim
  doc: compute persistent homology up to dimension <k>
  type: string?
  inputBinding:
    prefix: --dim
- id: in_threshold
  doc: compute Rips complexes up to diameter <t>
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_modulus
  doc: compute homology with coefficients in the prime field Z/<p>Z
  type: string?
  inputBinding:
    prefix: --modulus
- id: in_rip_ser
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filename
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ripser-coeff
