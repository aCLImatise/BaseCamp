version 1.0

task HicCompartmentalization {
  input {
    File? output_file_name
    Array[String] obs_exp_matrices
    File? pc_a
    Int? quantile
    Int? outliers
    File? output_matrix
    Array[String] offset
  }
  command <<<
    hicCompartmentalization \
      ~{if defined(output_file_name) then ("--outputFileName " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(obs_exp_matrices) then ("--obsexp_matrices " +  '"' + obs_exp_matrices + '"') else ""} \
      ~{if defined(pc_a) then ("--pca " +  '"' + pc_a + '"') else ""} \
      ~{if defined(quantile) then ("--quantile " +  '"' + quantile + '"') else ""} \
      ~{if defined(outliers) then ("--outliers " +  '"' + outliers + '"') else ""} \
      ~{if defined(output_matrix) then ("--outputMatrix " +  '"' + output_matrix + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""}
  >>>
  parameter_meta {
    output_file_name: "Plot to represent the polarization of A/B\\ncompartments."
    obs_exp_matrices: "HiCExplorer matrices in h5/cool format."
    pc_a: "a PCA vector as a bedgraph file with no header. In\\ncase of several matrices with different conditions,\\nie. controltreatment, the PCA of control can be used.\\nNote that only one PCA can be provided."
    quantile: "number of quantiles. (Default: 30)."
    outliers: "precentage of outlier to remove. (Default: 0)."
    output_matrix: "output .npz file includes all the generated matrices"
    offset: "set nan for the distances mentioned as offset from\\nmain diagonal, only positive values are accepted!\\nExample: if --offset 0, then values of main diagonal\\nwill set to nan and if --offset 0 1 then on top of the\\nmain diagonal, +1 and -1 diagonal values are also set\\nto nan."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_output_matrix = "${in_output_matrix}"
  }
}