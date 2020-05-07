version 1.0

task Hmm2gff.py {
  input {
    String? mapMap
    String? featuresFeatures
    String? contributingContributing
    String? toTo
    String? theThe
    String? classClassFication
    String? backBack
    String? toTo
    String? theThe
    String? functionalFunctional
    String? annotationAnnotation
    String? andAnd
    String? geneGene
    String? predictionPrediction
  }
  command <<<
    hmm2gff.py \
      ~{mapMap} \
      ~{featuresFeatures} \
      ~{contributingContributing} \
      ~{toTo} \
      ~{theThe} \
      ~{classClassFication} \
      ~{backBack} \
      ~{toTo} \
      ~{theThe} \
      ~{functionalFunctional} \
      ~{annotationAnnotation} \
      ~{andAnd} \
      ~{geneGene} \
      ~{predictionPrediction}
  >>>
}