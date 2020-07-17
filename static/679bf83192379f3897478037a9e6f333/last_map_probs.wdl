version 1.0

task LastMapProbs {
  input {
    String? mis_map
    String? score
  }
  command <<<
    last-map-probs \
      ~{if defined(mis_map) then ("--mismap " +  '"' + mis_map + '"') else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""}
  >>>
  parameter_meta {
    mis_map: "don't write alignments with mismap probability > M (default: 0.01)"
    score: "don't write alignments with score < S (default: e+t*ln[1000])"
  }
}