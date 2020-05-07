class: CommandLineTool
id: hicTransform.cwl
inputs:
- id: matrix
  doc: 'input file. The computation is done per chromosome. (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: out_filename
  doc: 'File name to save the exported matrix. (default: None)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: method
  doc: 'Transformation methods to use for input matrix. Transformation is computed
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
  type: string
  inputBinding:
    prefix: --method
- id: ligation_factor
  doc: 'Setting this flag, multiplies a scaling factor to each entry of the expected
    matrix to take care of the proximity ligation as has been explained in Homer software.
    This flag is only affective with obs_exp_non_zero method and will be ignored if
    any other obs/exp method is chosen. (default: False)'
  type: boolean
  inputBinding:
    prefix: --ligation_factor
- id: chromosomes
  doc: 'List of chromosomes to be included in the computation. (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: per_chromosome
  doc: 'Each chromosome is processed individually, inter- chromosomal interactions
    are ignored. Option not valid for obs_exp_lieberman. (default: False)'
  type: boolean
  inputBinding:
    prefix: --perChromosome
outputs: []
cwlVersion: v1.1
baseCommand:
- hicTransform
