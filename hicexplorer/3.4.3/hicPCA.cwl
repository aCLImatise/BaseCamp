class: CommandLineTool
id: hicPCA.cwl
inputs:
- id: matrix
  doc: 'HiCExplorer matrix in h5 format. (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: output_file_name
  doc: "File names for the result of the pca.Number of output files must match the\
    \ number of computed eigenvectors. (default: ['pca1', 'pca2'])"
  type: string[]
  inputBinding:
    prefix: --outputFileName
- id: number_of_eigenvectors
  doc: 'The number of eigenvectors that the PCA should compute. (default: 2)'
  type: string
  inputBinding:
    prefix: --numberOfEigenvectors
- id: format
  doc: 'Output format. Either bedgraph or bigwig. (default: bigwig)'
  type: string
  inputBinding:
    prefix: --format
- id: chromosomes
  doc: 'List of chromosomes to be included in the correlation. (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: method
  doc: 'possible methods which can be used to build the obs- exp matrix. (default:
    dist_norm)'
  type: string
  inputBinding:
    prefix: --method
- id: ligation_factor
  doc: 'Setting this flag multiplies a scaling factor to each entry of the expected
    matrix to take care of the proximity ligation as has been explained in Homer software.
    This flag is only affective with dist_norm method and will be ignored if lieberman
    method is chosen. (default: False)'
  type: boolean
  inputBinding:
    prefix: --ligation_factor
- id: extra_track
  doc: 'Either a gene track or a histon mark coverage file (preferably a broad mark)
    is needed to decide if the values of the eigenvector need a sign flip or not.
    (default: None)'
  type: string
  inputBinding:
    prefix: --extraTrack
- id: hist_on_mark_type
  doc: 'Set it to active or inactive. This is only necessary if a histon mark coverage
    file is given as an extraTrack. (default: active)'
  type: string
  inputBinding:
    prefix: --histonMarkType
- id: pearson_matrix
  doc: 'Internally the input matrix is converted per chromosome to obs_exp matrix
    and consecutively to a Pearson matrix. Set this parameter to write the pearson
    matrix to a file. (default: None)'
  type: string
  inputBinding:
    prefix: --pearsonMatrix
- id: obs_exp_matrix
  doc: 'Internally the input matrix is converted per chromosome to obs_exp matrix
    and consecutively to a Pearson matrix. Set this parameter to write the observe/expected
    matrix to a file. (default: None)'
  type: string
  inputBinding:
    prefix: --obsexpMatrix
- id: ignore_masked_bins
  doc: 'Mask bins are usually set to 0. This option removes the masked bins before
    the PCA is computed. Attention: this will lead to empty PCA regions. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --ignoreMaskedBins
outputs: []
cwlVersion: v1.1
baseCommand:
- hicPCA
