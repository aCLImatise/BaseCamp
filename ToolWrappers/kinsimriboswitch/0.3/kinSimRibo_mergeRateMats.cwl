class: CommandLineTool
id: kinSimRibo_mergeRateMats.cwl
inputs:
- id: in_factors_multiply_matrix
  doc: ":\nFactors to multiply the output matrix with, e.g. to account for\nthe pre-exponential\
    \ factors of the Arrhenius equation. The\ncoefficients are applyed to different\
    \ parts of the matrix as\nfollows:\n.-      -.  where A is multiplied with the\
    \ monomer rates, B with\n|  A  C  |  the dimer rates, C with the monomer-dimer\n\
    |        |  (dimerization) rates, and D with the dimer-monomer\n|  D  B  |  (dissociation)\
    \ rates.\n`-      -´"
  type: boolean
  inputBinding:
    prefix: -A
- id: in_allow_matrix_check
  doc: ':     Allow disconnected matrix / do not check whether A and B are'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_connected_dot
  doc: '-v:     Be verbose'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kinSimRibo_mergeRateMats
