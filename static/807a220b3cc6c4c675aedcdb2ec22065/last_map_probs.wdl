version 1.0

task LastMapProbs {
  input {
    String misMisMap
    String scoreScore
  }
  command <<<
    last-map-probs \
      ~{if defined(misMisMap) then ("--mismap " +  '"' + misMisMap + '"') else ""} \
      ~{if defined(scoreScore) then ("--score " +  '"' + scoreScore + '"') else ""}
  >>>
}