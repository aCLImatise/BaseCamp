version 1.0

task HicPCA {
  input {
    Int? matrix
    Array[File] output_file_name
    Int? number_of_eigenvectors
    String? format
    Array[String] chromosomes
    String? method
    Boolean? ligation_factor
    File? extra_track
    File? hist_on_mark_type
    File? pearson_matrix
    File? obs_exp_matrix
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
      ~{if (ligation_factor) then "--ligation_factor" else ""} \
      ~{if defined(extra_track) then ("--extraTrack " +  '"' + extra_track + '"') else ""} \
      ~{if defined(hist_on_mark_type) then ("--histonMarkType " +  '"' + hist_on_mark_type + '"') else ""} \
      ~{if defined(pearson_matrix) then ("--pearsonMatrix " +  '"' + pearson_matrix + '"') else ""} \
      ~{if defined(obs_exp_matrix) then ("--obsexpMatrix " +  '"' + obs_exp_matrix + '"') else ""} \
      ~{if (ignore_masked_bins) then "--ignoreMaskedBins" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix: "HiCExplorer matrix in h5 format. (default: None)"
    output_file_name: "File names for the result of the pca.Number of output\\nfiles must match the number of computed eigenvectors.\\n(default: ['pca1', 'pca2'])"
    number_of_eigenvectors: "The number of eigenvectors that the PCA should\\ncompute. (default: 2)"
    format: "Output format. Either bedgraph or bigwig. (default:\\nbigwig)"
    chromosomes: "List of chromosomes to be included in the correlation.\\n(default: None)"
    method: "possible methods which can be used to build the obs-\\nexp matrix. (default: dist_norm)"
    ligation_factor: "Setting this flag multiplies a scaling factor to each\\nentry of the expected matrix to take care of the\\nproximity ligation as has been explained in Homer\\nsoftware. This flag is only affective with dist_norm\\nmethod and will be ignored if lieberman method is\\nchosen. (default: False)"
    extra_track: "Either a gene track or a histon mark coverage file\\n(preferably a broad mark) is needed to decide if the\\nvalues of the eigenvector need a sign flip or not.\\n(default: None)"
    hist_on_mark_type: "Set it to active or inactive. This is only necessary\\nif a histon mark coverage file is given as an\\nextraTrack. (default: active)"
    pearson_matrix: "Internally the input matrix is converted per\\nchromosome to obs_exp matrix and consecutively to a\\nPearson matrix. Set this parameter to write the\\npearson matrix to a file. (default: None)"
    obs_exp_matrix: "Internally the input matrix is converted per\\nchromosome to obs_exp matrix and consecutively to a\\nPearson matrix. Set this parameter to write the\\nobserve/expected matrix to a file. (default: None)"
    ignore_masked_bins: "Mask bins are usually set to 0. This option removes\\nthe masked bins before the PCA is computed. Attention:\\nthis will lead to empty PCA regions. (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}