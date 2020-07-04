version 1.0

task HicTransform {
  input {
    String? matrix
    String? out_filename
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
      ~{true="--ligation_factor" false="" ligation_factor} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{true="--perChromosome" false="" per_chromosome}
  >>>
  parameter_meta {
    matrix: "input file. The computation is done per chromosome. (default: None)"
    out_filename: "File name to save the exported matrix. (default: None)"
    method: "Transformation methods to use for input matrix. Transformation is computed per chromosome.obs_exp computes the expected matrix as the sum per genomic distance j divided by maximal possible contacts: sum(diagonal(j) / number of elements in diagonal(j) obs_exp_lieberman computes the expected matrix as the sum per genomic distance j divided by the : sum(diagonal(j) / (length of chromosome - j))obs_exp_non_zero computes the expected matrix as the sum per genomic distance j divided by sum of non- zero contacts: sum(diagonal(j) / number of non-zero elements in diagonal(j)Optionally, ``--ligation_factor` can be used for this method as has been used by HOMER software. If --ligation_factor, then exp_i,j = exp_i,j * sum(row(i)) * sum(row(j)) / sum(matrix)pearson computes the Pearson correlation of the input matrix: Pearson_i,j = C_i,j / sqrt(C_i,i * C_j,j) and C is the covariance matrixcovariance computes the Covariance of the input matrix: Cov_i,j = E[M_i, M_j] - my_i * my_j where M is the input matrix and my the mean. (default: obs_exp)"
    ligation_factor: "Setting this flag, multiplies a scaling factor to each entry of the expected matrix to take care of the proximity ligation as has been explained in Homer software. This flag is only affective with obs_exp_non_zero method and will be ignored if any other obs/exp method is chosen. (default: False)"
    chromosomes: "List of chromosomes to be included in the computation. (default: None)"
    per_chromosome: "Each chromosome is processed individually, inter- chromosomal interactions are ignored. Option not valid for obs_exp_lieberman. (default: False)"
  }
}