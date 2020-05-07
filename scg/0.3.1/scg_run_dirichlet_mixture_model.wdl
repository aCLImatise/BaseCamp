version 1.0

task ScgRunDirichletMixtureModel {
  input {
    String seedSeed
    String labelsLabelsFile
  }
  command <<<
    scg run_dirichlet_mixture_model \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(labelsLabelsFile) then ("--labels_file " +  '"' + labelsLabelsFile + '"') else ""}
  >>>
}