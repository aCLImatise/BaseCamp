version 1.0

task TraitarShow {
  input {
    Boolean? predictor
    String? strategy
    Boolean? include_negative
    String? models_f
  }
  command <<<
    traitar show \
      ~{if (predictor) then "--predictor" else ""} \
      ~{if defined(strategy) then ("--strategy " +  '"' + strategy + '"') else ""} \
      ~{if (include_negative) then "--include_negative" else ""} \
      ~{if defined(models_f) then ("--models_f " +  '"' + models_f + '"') else ""}
  >>>
  parameter_meta {
    predictor: "{phypat,phypat+PGL}\\npick phypat or phypat+PGL classifier"
    strategy: ""
    include_negative: ""
    models_f: "phenotype models archive; if set, look for the target\\nin the phenotype in the given phenotype collection\\n"
  }
  output {
    File out_stdout = stdout()
  }
}