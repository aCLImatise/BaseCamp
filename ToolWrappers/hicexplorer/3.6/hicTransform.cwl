class: CommandLineTool
id: hicTransform.cwl
inputs:
- id: in_matrix
  doc: "input file. The computation is done per chromosome.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: 'File name to save the exported matrix. (default: None)'
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_method
  doc: "Transformation methods to use for input matrix.\nTransformation is computed\
    \ per chromosome.obs_exp\ncomputes the expected matrix as the sum per genomic\n\
    distance j divided by maximal possible contacts:\nsum(diagonal(j) / number of\
    \ elements in diagonal(j)\nobs_exp_lieberman computes the expected matrix as the\n\
    sum per genomic distance j divided by the :\nsum(diagonal(j) / (length of chromosome\
    \ -\nj))obs_exp_non_zero computes the expected matrix as\nthe sum per genomic\
    \ distance j divided by sum of non-\nzero contacts: sum(diagonal(j) / number of\
    \ non-zero\nelements in diagonal(j)Optionally,\n``--ligation_factor` can be used\
    \ for this method as\nhas been used by HOMER software. If --ligation_factor,\n\
    then exp_i,j = exp_i,j * sum(row(i)) * sum(row(j)) /\nsum(matrix)pearson computes\
    \ the Pearson correlation of\nthe input matrix: Pearson_i,j = C_i,j / sqrt(C_i,i\
    \ *\nC_j,j) and C is the covariance matrixcovariance\ncomputes the Covariance\
    \ of the input matrix: Cov_i,j =\nE[M_i, M_j] - my_i * my_j where M is the input\
    \ matrix\nand my the mean (Default: obs_exp)."
  type: string?
  inputBinding:
    prefix: --method
- id: in_ligation_factor
  doc: "Setting this flag, multiplies a scaling factor to each\nentry of the expected\
    \ matrix to take care of the\nproximity ligation as has been explained in Homer\n\
    software. This flag is only affective with\nobs_exp_non_zero method and will be\
    \ ignored if any\nother obs/exp method is chosen. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --ligation_factor
- id: in_chromosomes
  doc: "List of chromosomes to be included in the computation.\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_per_chromosome
  doc: "Each chromosome is processed individually, inter-\nchromosomal interactions\
    \ are ignored. Option not valid\nfor obs_exp_lieberman. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --perChromosome
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: 'File name to save the exported matrix. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicTransform
