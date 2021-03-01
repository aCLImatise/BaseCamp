version 1.0

task HicTransform {
  input {
    File? matrix
    File? out_filename
    String? method
    Boolean? ligation_factor
    Array[String] chromosomes
    Boolean? per_chromosome
  }
  command <<<
    hicTransform \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if (ligation_factor) then "--ligation_factor" else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if (per_chromosome) then "--perChromosome" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    matrix: "input file. The computation is done per chromosome.\\n(default: None)"
    out_filename: "File name to save the exported matrix. (default: None)"
    method: "Transformation methods to use for input matrix.\\nTransformation is computed per chromosome.obs_exp\\ncomputes the expected matrix as the sum per genomic\\ndistance j divided by maximal possible contacts:\\nsum(diagonal(j) / number of elements in diagonal(j)\\nobs_exp_lieberman computes the expected matrix as the\\nsum per genomic distance j divided by the :\\nsum(diagonal(j) / (length of chromosome -\\nj))obs_exp_non_zero computes the expected matrix as\\nthe sum per genomic distance j divided by sum of non-\\nzero contacts: sum(diagonal(j) / number of non-zero\\nelements in diagonal(j)Optionally,\\n``--ligation_factor` can be used for this method as\\nhas been used by HOMER software. If --ligation_factor,\\nthen exp_i,j = exp_i,j * sum(row(i)) * sum(row(j)) /\\nsum(matrix)pearson computes the Pearson correlation of\\nthe input matrix: Pearson_i,j = C_i,j / sqrt(C_i,i *\\nC_j,j) and C is the covariance matrixcovariance\\ncomputes the Covariance of the input matrix: Cov_i,j =\\nE[M_i, M_j] - my_i * my_j where M is the input matrix\\nand my the mean (Default: obs_exp)."
    ligation_factor: "Setting this flag, multiplies a scaling factor to each\\nentry of the expected matrix to take care of the\\nproximity ligation as has been explained in Homer\\nsoftware. This flag is only affective with\\nobs_exp_non_zero method and will be ignored if any\\nother obs/exp method is chosen. (default: False)"
    chromosomes: "List of chromosomes to be included in the computation.\\n(default: None)"
    per_chromosome: "Each chromosome is processed individually, inter-\\nchromosomal interactions are ignored. Option not valid\\nfor obs_exp_lieberman. (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}