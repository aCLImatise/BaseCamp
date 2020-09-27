class: CommandLineTool
id: lyner_pairwise_distances.cwl
inputs:
- id: in_metric
  doc: '[braycurtis|canberra|chebyshev|cityblock|correlation|cosine|dice|euclidean|hamming|jaccard|jensenshannon|kulsinski|mahalanobis|matching|minkowski|rogerstanimoto|russellrao|seuclidean|sokalmichener|sokalsneath|sqeuclidean|yule]'
  type: boolean
  inputBinding:
    prefix: --metric
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- pairwise-distances
