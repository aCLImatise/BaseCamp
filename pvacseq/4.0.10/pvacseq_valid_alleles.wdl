version 1.0

task PvacseqValidAlleles {
  input {
    String? prediction_algorithm
  }
  command <<<
    pvacseq valid_alleles \
      ~{if defined(prediction_algorithm) then ("--prediction-algorithm " +  '"' + prediction_algorithm + '"') else ""}
  >>>
  parameter_meta {
    prediction_algorithm: "The epitope prediction algorithms to use"
  }
}