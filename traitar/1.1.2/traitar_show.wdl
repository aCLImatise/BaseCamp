version 1.0

task TraitarShow {
  input {
    String? models_f
    String phenotype
  }
  command <<<
    traitar show \
      ~{phenotype} \
      ~{if defined(models_f) then ("--models_f " +  '"' + models_f + '"') else ""}
  >>>
  parameter_meta {
    models_f: "phenotype models archive; if set, look for the target in the phenotype in the given phenotype collection"
    phenotype: "phenotype under investigation"
  }
}