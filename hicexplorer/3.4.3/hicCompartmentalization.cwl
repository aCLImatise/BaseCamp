class: CommandLineTool
id: hicCompartmentalization.cwl
inputs:
- id: obs_exp_matrices
  doc: HiCExplorer matrices in h5/cool format.
  type: string[]
  inputBinding:
    prefix: --obsexp_matrices
- id: pc_a
  doc: a PCA vector as a bedgraph file with no header. In case of several matrices
    with different conditions, ie. controltreatment, the PCA of control can be used.
    Note that only one PCA can be provided.
  type: string
  inputBinding:
    prefix: --pca
- id: output_file_name
  doc: Plot to represent the polarization of A/B compartments.
  type: string
  inputBinding:
    prefix: --outputFileName
- id: quantile
  doc: 'number of quantiles. (Default: 30).'
  type: string
  inputBinding:
    prefix: --quantile
- id: outliers
  doc: 'precentage of outlier to remove. (Default: 0).'
  type: string
  inputBinding:
    prefix: --outliers
- id: output_matrix
  doc: output .npz file includes all the generated matrices
  type: string
  inputBinding:
    prefix: --outputMatrix
- id: offset
  doc: 'set nan for the distances mentioned as offset from main diagonal, only positive
    values are accepted! Example: if --offset 0, then values of main diagonal will
    set to nan and if --offset 0 1 then on top of the main diagonal, +1 and -1 diagonal
    values are also set to nan.'
  type: string[]
  inputBinding:
    prefix: --offset
outputs: []
cwlVersion: v1.1
baseCommand:
- hicCompartmentalization
