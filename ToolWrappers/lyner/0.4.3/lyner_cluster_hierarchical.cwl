class: CommandLineTool
id: lyner_cluster_hierarchical.cwl
inputs:
- id: in_method
  doc: "[single|complete|average|weighted|centroid|median|ward]\n-d, --distance-metric\
    \ [braycurtis|canberra|chebyshev|cityblock|correlation|cosine|dice|euclidean|hamming|jaccard|kulsinski|mahalanobis|matching|minkowski|rogerstanimoto|russellrao|seuclidean|sokalmichener|sokalsneath|sqeuclidean|yule]\n\
    -c, --criterion [inconsistent|distance|maxclust|monocrit|maxclust_monocrit]\n\
    -t, --threshold FLOAT\n--help                          Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --method
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- cluster-hierarchical
