class: CommandLineTool
id: mmseqs_sequence2profile.cwl
inputs:
- id: pc_a
  doc: '1.000           pseudo count admixture strength                             '
  type: boolean
  inputBinding:
    prefix: --pca
- id: pcb
  doc: '1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)'
  type: boolean
  inputBinding:
    prefix: --pcb
- id: neff
  doc: '1.000           Neff included into context state profile (1.0,20.0)         '
  type: boolean
  inputBinding:
    prefix: --neff
- id: tau
  doc: '0.900           Tau: context state pseudo count mixture (0.0,1.0)           '
  type: boolean
  inputBinding:
    prefix: --tau
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: sub_mat
  doc: 'blosum62.out    amino acid substitution matrix file                         '
  type: boolean
  inputBinding:
    prefix: --sub-mat
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- sequence2profile
