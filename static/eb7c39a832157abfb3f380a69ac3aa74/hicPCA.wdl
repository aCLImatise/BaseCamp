version 1.0

task HicPCA {
  input {
    String? matrix
    Array[String] output_file_name
    String? number_of_eigenvectors
    String? format
    Array[String] chromosomes
    String? method
    Boolean? ligation_factor
    String? extra_track
    String? hist_on_mark_type
    String? pearson_matrix
    String? obs_exp_matrix
    Boolean? ignore_masked_bins
  }
  command <<<
    hicPCA \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(output_file_name) then ("--outputFileName " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(number_of_eigenvectors) then ("--numberOfEigenvectors " +  '"' + number_of_eigenvectors + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{true="--ligation_factor" false="" ligation_factor} \
      ~{if defined(extra_track) then ("--extraTrack " +  '"' + extra_track + '"') else ""} \
      ~{if defined(hist_on_mark_type) then ("--histonMarkType " +  '"' + hist_on_mark_type + '"') else ""} \
      ~{if defined(pearson_matrix) then ("--pearsonMatrix " +  '"' + pearson_matrix + '"') else ""} \
      ~{if defined(obs_exp_matrix) then ("--obsexpMatrix " +  '"' + obs_exp_matrix + '"') else ""} \
      ~{true="--ignoreMaskedBins" false="" ignore_masked_bins}
  >>>
  parameter_meta {
    matrix: "HiCExplorer matrix in h5 format. (default: None)"
    output_file_name: "File names for the result of the pca.Number of output files must match the number of computed eigenvectors. (default: ['pca1', 'pca2'])"
    number_of_eigenvectors: "The number of eigenvectors that the PCA should compute. (default: 2)"
    format: "Output format. Either bedgraph or bigwig. (default: bigwig)"
    chromosomes: "List of chromosomes to be included in the correlation. (default: None)"
    method: "possible methods which can be used to build the obs- exp matrix. (default: dist_norm)"
    ligation_factor: "Setting this flag multiplies a scaling factor to each entry of the expected matrix to take care of the proximity ligation as has been explained in Homer software. This flag is only affective with dist_norm method and will be ignored if lieberman method is chosen. (default: False)"
    extra_track: "Either a gene track or a histon mark coverage file (preferably a broad mark) is needed to decide if the values of the eigenvector need a sign flip or not. (default: None)"
    hist_on_mark_type: "Set it to active or inactive. This is only necessary if a histon mark coverage file is given as an extraTrack. (default: active)"
    pearson_matrix: "Internally the input matrix is converted per chromosome to obs_exp matrix and consecutively to a Pearson matrix. Set this parameter to write the pearson matrix to a file. (default: None)"
    obs_exp_matrix: "Internally the input matrix is converted per chromosome to obs_exp matrix and consecutively to a Pearson matrix. Set this parameter to write the observe/expected matrix to a file. (default: None)"
    ignore_masked_bins: "Mask bins are usually set to 0. This option removes the masked bins before the PCA is computed. Attention: this will lead to empty PCA regions. (default: False)"
  }
}