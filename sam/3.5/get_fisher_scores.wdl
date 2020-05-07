version 1.0

task GetFisherScores {
  input {
    String fisherFisherFeature
    Boolean nullNullScoreWeightScale
    Boolean rdbRdb
    Boolean writeWriteDist
  }
  command <<<
    get_fisher_scores \
      ~{if defined(fisherFisherFeature) then ("-fisher_feature " +  '"' + fisherFisherFeature + '"') else ""} \
      ~{true="-null_score_weight_scale" false="" nullNullScoreWeightScale} \
      ~{true="-rdb" false="" rdbRdb} \
      ~{true="-write_dist" false="" writeWriteDist}
  >>>
}