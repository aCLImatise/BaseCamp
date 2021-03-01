class: CommandLineTool
id: hicCompartmentalization.cwl
inputs:
- id: in_obs_exp_matrices
  doc: HiCExplorer matrices in h5/cool format.
  type: string[]
  inputBinding:
    prefix: --obsexp_matrices
- id: in_pc_a
  doc: "a PCA vector as a bedgraph file with no header. In\ncase of several matrices\
    \ with different conditions,\nie. controltreatment, the PCA of control can be\
    \ used.\nNote that only one PCA can be provided."
  type: File?
  inputBinding:
    prefix: --pca
- id: in_output_file_name
  doc: "Plot to represent the polarization of A/B\ncompartments."
  type: File?
  inputBinding:
    prefix: --outputFileName
- id: in_quantile
  doc: 'number of quantiles. (Default: 30).'
  type: long?
  inputBinding:
    prefix: --quantile
- id: in_outliers
  doc: 'precentage of outlier to remove. (Default: 0).'
  type: long?
  inputBinding:
    prefix: --outliers
- id: in_output_matrix
  doc: output .npz file includes all the generated matrices
  type: File?
  inputBinding:
    prefix: --outputMatrix
- id: in_offset
  doc: "set nan for the distances mentioned as offset from\nmain diagonal, only positive\
    \ values are accepted!\nExample: if --offset 0, then values of main diagonal\n\
    will set to nan and if --offset 0 1 then on top of the\nmain diagonal, +1 and\
    \ -1 diagonal values are also set\nto nan."
  type: string[]
  inputBinding:
    prefix: --offset
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: "Plot to represent the polarization of A/B\ncompartments."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
- id: out_output_matrix
  doc: output .npz file includes all the generated matrices
  type: File?
  outputBinding:
    glob: $(inputs.in_output_matrix)
hints: []
cwlVersion: v1.1
baseCommand:
- hicCompartmentalization
