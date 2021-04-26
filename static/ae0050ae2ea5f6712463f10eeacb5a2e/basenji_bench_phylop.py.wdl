version 1.0

task BasenjiBenchPhyloppy {
  input {
    String? pca_ncomponents
    Int? number_random_forest
    Int? phylop_fasta_genome
    Int? crossvalidation_iterations
    Int? parallel_threads_passed
    Int? stat
    String scores_file
  }
  command <<<
    basenji_bench_phylop_py \
      ~{scores_file} \
      ~{if defined(pca_ncomponents) then ("-d " +  '"' + pca_ncomponents + '"') else ""} \
      ~{if defined(number_random_forest) then ("-e " +  '"' + number_random_forest + '"') else ""} \
      ~{if defined(phylop_fasta_genome) then ("-g " +  '"' + phylop_fasta_genome + '"') else ""} \
      ~{if defined(crossvalidation_iterations) then ("-i " +  '"' + crossvalidation_iterations + '"') else ""} \
      ~{if defined(parallel_threads_passed) then ("-o " +  '"' + parallel_threads_passed + '"') else ""} \
      ~{if defined(stat) then ("--stat " +  '"' + stat + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    pca_ncomponents: "PCA n_components [Default: none]"
    number_random_forest: "Number of random forest estimators [Default: 100]"
    phylop_fasta_genome: "PhyloP and FASTA genome [Default: ce11]"
    crossvalidation_iterations: "Cross-validation iterations [Default: 1]"
    parallel_threads_passed: "Parallel threads passed to scikit-learn n_jobs\\n[Default: 1]"
    stat: "HDF5 key stat to consider. [Default: sum]"
    scores_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}