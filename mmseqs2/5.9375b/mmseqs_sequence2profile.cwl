class: CommandLineTool
id: ../../../mmseqs_sequence2profile.cwl
inputs:
- id: in_pc_a
  doc: 1.000           pseudo count admixture strength
  type: boolean
  inputBinding:
    prefix: --pca
- id: in_pcb
  doc: '1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)'
  type: boolean
  inputBinding:
    prefix: --pcb
- id: in_neff
  doc: 1.000           Neff included into context state profile (1.0,20.0)
  type: boolean
  inputBinding:
    prefix: --neff
- id: in_tau
  doc: '0.900           Tau: context state pseudo count mixture (0.0,1.0)'
  type: boolean
  inputBinding:
    prefix: --tau
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_sub_mat
  doc: blosum62.out    amino acid substitution matrix file
  type: File
  inputBinding:
    prefix: --sub-mat
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sub_mat
  doc: blosum62.out    amino acid substitution matrix file
  type: File
  outputBinding:
    glob: $(inputs.in_sub_mat)
cwlVersion: v1.1
baseCommand:
- mmseqs
- sequence2profile
