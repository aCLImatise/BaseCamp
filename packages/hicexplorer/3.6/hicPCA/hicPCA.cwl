class: CommandLineTool
id: hicPCA.cwl
inputs:
- id: in_matrix
  doc: 'HiCExplorer matrix in h5 format. (default: None)'
  type: long?
  inputBinding:
    prefix: --matrix
- id: in_output_file_name
  doc: "File names for the result of the pca.Number of output\nfiles must match the\
    \ number of computed eigenvectors.\n(default: None)"
  type: File[]
  inputBinding:
    prefix: --outputFileName
- id: in_number_of_eigenvectors
  doc: "The number of eigenvectors that the PCA should compute\n(Default: 2)."
  type: long?
  inputBinding:
    prefix: --numberOfEigenvectors
- id: in_format
  doc: "Output format. Either bedgraph or bigwig (Default:\nbigwig)."
  type: string?
  inputBinding:
    prefix: --format
- id: in_chromosomes
  doc: "List of chromosomes to be included in the correlation.\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_method
  doc: "possible methods which can be used to build the obs-\nexp matrix are dist_norm\
    \ and lieberman (Default:\ndist_norm)."
  type: string?
  inputBinding:
    prefix: --method
- id: in_ligation_factor
  doc: "Setting this flag multiplies a scaling factor to each\nentry of the expected\
    \ matrix to take care of the\nproximity ligation as has been explained in Homer\n\
    software. This flag is only affective with dist_norm\nmethod and will be ignored\
    \ if lieberman method is\nchosen. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --ligation_factor
- id: in_extra_track
  doc: "Either a gene track or a histon mark coverage file\n(preferably a broad mark)\
    \ is needed to decide if the\nvalues of the eigenvector need a sign flip or not.\n\
    (default: None)"
  type: File?
  inputBinding:
    prefix: --extraTrack
- id: in_hist_on_mark_type
  doc: "Set it to active or inactive. This is only necessary\nif a histon mark coverage\
    \ file is given as an\nextraTrack (Default: active)."
  type: File?
  inputBinding:
    prefix: --histonMarkType
- id: in_pearson_matrix
  doc: "Internally the input matrix is converted per\nchromosome to obs_exp matrix\
    \ and consecutively to a\nPearson matrix. Set this parameter to write the\npearson\
    \ matrix to a file. (default: None)"
  type: File?
  inputBinding:
    prefix: --pearsonMatrix
- id: in_obs_exp_matrix
  doc: "Internally the input matrix is converted per\nchromosome to obs_exp matrix\
    \ and consecutively to a\nPearson matrix. Set this parameter to write the\nobserve/expected\
    \ matrix to a file. (default: None)"
  type: File?
  inputBinding:
    prefix: --obsexpMatrix
- id: in_ignore_masked_bins
  doc: "Mask bins are usually set to 0. This option removes\nthe masked bins before\
    \ the PCA is computed. Attention:\nthis will lead to empty PCA regions. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --ignoreMaskedBins
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicPCA
