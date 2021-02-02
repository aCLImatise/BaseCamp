version 1.0

task LynerClusterhierarchical {
  input {
    Boolean? method
  }
  command <<<
    lyner cluster_hierarchical \
      ~{if (method) then "--method" else ""}
  >>>
  parameter_meta {
    method: "[single|complete|average|weighted|centroid|median|ward]\\n-d, --distance-metric [braycurtis|canberra|chebyshev|cityblock|correlation|cosine|dice|euclidean|hamming|jaccard|kulsinski|mahalanobis|matching|minkowski|rogerstanimoto|russellrao|seuclidean|sokalmichener|sokalsneath|sqeuclidean|yule]\\n-c, --criterion [inconsistent|distance|maxclust|monocrit|maxclust_monocrit]\\n-t, --threshold FLOAT\\n--help                          Show this message and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}