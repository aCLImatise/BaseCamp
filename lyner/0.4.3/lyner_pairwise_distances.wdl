version 1.0

task LynerPairwisedistances {
  input {
    Boolean? metric
  }
  command <<<
    lyner pairwise_distances \
      ~{if (metric) then "--metric" else ""}
  >>>
  parameter_meta {
    metric: "[braycurtis|canberra|chebyshev|cityblock|correlation|cosine|dice|euclidean|hamming|jaccard|jensenshannon|kulsinski|mahalanobis|matching|minkowski|rogerstanimoto|russellrao|seuclidean|sokalmichener|sokalsneath|sqeuclidean|yule]"
  }
  output {
    File out_stdout = stdout()
  }
}