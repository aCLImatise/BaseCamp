version 1.0

task LynerClusterhierarchical {
  input {
    Boolean? method
    Boolean? distance_metric
    Boolean? criterion
    Float? threshold
  }
  command <<<
    lyner cluster_hierarchical \
      ~{if (method) then "--method" else ""} \
      ~{if (distance_metric) then "--distance-metric" else ""} \
      ~{if (criterion) then "--criterion" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    method: "[single|complete|average|weighted|centroid|median|ward]"
    distance_metric: "[braycurtis|canberra|chebyshev|cityblock|correlation|cosine|dice|euclidean|hamming|jaccard|kulsinski|mahalanobis|matching|minkowski|rogerstanimoto|russellrao|seuclidean|sokalmichener|sokalsneath|sqeuclidean|yule]"
    criterion: "[inconsistent|distance|maxclust|monocrit|maxclust_monocrit]"
    threshold: ""
  }
  output {
    File out_stdout = stdout()
  }
}