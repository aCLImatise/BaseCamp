#!/usr/bin/env cwl-runner

baseCommand:
- hicPCA
class: CommandLineTool
cwlVersion: v1.0
id: hicpca
inputs:
- doc: 'HiCExplorer matrix in h5 format. (default: None)'
  id: matrix
  inputBinding:
    prefix: --matrix
  type: string
- doc: "File names for the result of the pca.Number of output files must match the\
    \ number of computed eigenvectors. (default: ['pca1', 'pca2'])"
  id: output_file_name
  inputBinding:
    prefix: --outputFileName
  type:
    items: string
    type: array
- doc: 'The number of eigenvectors that the PCA should compute. (default: 2)'
  id: number_of_eigenvectors
  inputBinding:
    prefix: --numberOfEigenvectors
  type: string
- doc: 'Output format. Either bedgraph or bigwig. (default: bigwig)'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: 'List of chromosomes to be included in the correlation. (default: None)'
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type:
    items: string
    type: array
- doc: 'possible methods which can be used to build the obs- exp matrix. (default:
    dist_norm)'
  id: method
  inputBinding:
    prefix: --method
  type: string
- doc: 'Setting this flag multiplies a scaling factor to each entry of the expected
    matrix to take care of the proximity ligation as has been explained in Homer software.
    This flag is only affective with dist_norm method and will be ignored if lieberman
    method is chosen. (default: False)'
  id: ligation_factor
  inputBinding:
    prefix: --ligation_factor
  type: boolean
- doc: 'Either a gene track or a histon mark coverage file (preferably a broad mark)
    is needed to decide if the values of the eigenvector need a sign flip or not.
    (default: None)'
  id: extra_track
  inputBinding:
    prefix: --extraTrack
  type: string
- doc: 'Set it to active or inactive. This is only necessary if a histon mark coverage
    file is given as an extraTrack. (default: active)'
  id: hist_on_mark_type
  inputBinding:
    prefix: --histonMarkType
  type: string
- doc: 'Internally the input matrix is converted per chromosome to obs_exp matrix
    and consecutively to a Pearson matrix. Set this parameter to write the pearson
    matrix to a file. (default: None)'
  id: pearson_matrix
  inputBinding:
    prefix: --pearsonMatrix
  type: string
- doc: 'Internally the input matrix is converted per chromosome to obs_exp matrix
    and consecutively to a Pearson matrix. Set this parameter to write the observe/expected
    matrix to a file. (default: None)'
  id: obs_exp_matrix
  inputBinding:
    prefix: --obsexpMatrix
  type: string
- doc: 'Mask bins are usually set to 0. This option removes the masked bins before
    the PCA is computed. Attention: this will lead to empty PCA regions. (default:
    False)'
  id: ignore_masked_bins
  inputBinding:
    prefix: --ignoreMaskedBins
  type: boolean
