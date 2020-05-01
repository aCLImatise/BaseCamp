#!/usr/bin/env cwl-runner

baseCommand:
- hicCompartmentalization
class: CommandLineTool
cwlVersion: v1.0
id: hiccompartmentalization
inputs:
- doc: HiCExplorer matrices in h5/cool format.
  id: obs_exp_matrices
  inputBinding:
    prefix: --obsexp_matrices
  type:
    items: string
    type: array
- doc: a PCA vector as a bedgraph file with no header. In case of several matrices
    with different conditions, ie. controltreatment, the PCA of control can be used.
    Note that only one PCA can be provided.
  id: pc_a
  inputBinding:
    prefix: --pca
  type: string
- doc: Plot to represent the polarization of A/B compartments.
  id: output_file_name
  inputBinding:
    prefix: --outputFileName
  type: string
- doc: 'number of quantiles. (Default: 30).'
  id: quantile
  inputBinding:
    prefix: --quantile
  type: string
- doc: 'precentage of outlier to remove. (Default: 0).'
  id: outliers
  inputBinding:
    prefix: --outliers
  type: string
- doc: output .npz file includes all the generated matrices
  id: output_matrix
  inputBinding:
    prefix: --outputMatrix
  type: string
- doc: 'set nan for the distances mentioned as offset from main diagonal, only positive
    values are accepted! Example: if --offset 0, then values of main diagonal will
    set to nan and if --offset 0 1 then on top of the main diagonal, +1 and -1 diagonal
    values are also set to nan.'
  id: offset
  inputBinding:
    prefix: --offset
  type:
    items: string
    type: array
