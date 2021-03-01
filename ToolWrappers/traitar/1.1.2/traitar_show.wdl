version 1.0

task TraitarShow {
  input {
    Boolean? predictor
    String? include_negative
  }
  command <<<
    traitar show \
      ~{if (predictor) then "--predictor" else ""} \
      ~{if defined(include_negative) then ("--include_negative " +  '"' + include_negative + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    predictor: "{phypat,phypat+PGL}\\npick phypat or phypat+PGL classifier"
    include_negative: "phenotype models archive; if set, look for the target\\nin the phenotype in the given phenotype collection\\n"
  }
  output {
    File out_stdout = stdout()
  }
}