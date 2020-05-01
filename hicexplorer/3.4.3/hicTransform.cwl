#!/usr/bin/env cwl-runner

baseCommand:
- hicTransform
class: CommandLineTool
cwlVersion: v1.0
id: hictransform
inputs:
- doc: 'input file. The computation is done per chromosome. (default: None)'
  id: matrix
  inputBinding:
    prefix: --matrix
  type: string
- doc: 'File name to save the exported matrix. (default: None)'
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: 'Transformation methods to use for input matrix. Transformation is computed
    per chromosome.obs_exp computes the expected matrix as the sum per genomic distance
    j divided by maximal possible contacts: sum(diagonal(j) / number of elements in
    diagonal(j) obs_exp_lieberman computes the expected matrix as the sum per genomic
    distance j divided by the : sum(diagonal(j) / (length of chromosome - j))obs_exp_non_zero
    computes the expected matrix as the sum per genomic distance j divided by sum
    of non- zero contacts: sum(diagonal(j) / number of non-zero elements in diagonal(j)Optionally,
    ``--ligation_factor` can be used for this method as has been used by HOMER software.
    If --ligation_factor, then exp_i,j = exp_i,j * sum(row(i)) * sum(row(j)) / sum(matrix)pearson
    computes the Pearson correlation of the input matrix: Pearson_i,j = C_i,j / sqrt(C_i,i
    * C_j,j) and C is the covariance matrixcovariance computes the Covariance of the
    input matrix: Cov_i,j = E[M_i, M_j] - my_i * my_j where M is the input matrix
    and my the mean. (default: obs_exp)'
  id: method
  inputBinding:
    prefix: --method
  type: string
- doc: 'Setting this flag, multiplies a scaling factor to each entry of the expected
    matrix to take care of the proximity ligation as has been explained in Homer software.
    This flag is only affective with obs_exp_non_zero method and will be ignored if
    any other obs/exp method is chosen. (default: False)'
  id: ligation_factor
  inputBinding:
    prefix: --ligation_factor
  type: boolean
- doc: 'List of chromosomes to be included in the computation. (default: None)'
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type:
    items: string
    type: array
- doc: 'Each chromosome is processed individually, inter- chromosomal interactions
    are ignored. Option not valid for obs_exp_lieberman. (default: False)'
  id: per_chromosome
  inputBinding:
    prefix: --perChromosome
  type: boolean
