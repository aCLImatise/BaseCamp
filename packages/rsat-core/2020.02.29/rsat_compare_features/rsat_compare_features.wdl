version 1.0

task RsatComparefeatures {
  input {
    String? files
    String compare_features
    String util
    String negative_dot
    String inter_len
    String inter_cov
    String feature_map
    String all_coordinates
  }
  command <<<
    rsat compare_features \
      ~{compare_features} \
      ~{util} \
      ~{negative_dot} \
      ~{inter_len} \
      ~{inter_cov} \
      ~{feature_map} \
      ~{all_coordinates} \
      ~{if defined(files) then ("-files " +  '"' + files + '"') else ""}
  >>>
  parameter_meta {
    files: "considered as input files."
    compare_features: "[1mDESCRIPTION[0m"
    util: "[1mUSAGE[0m"
    negative_dot: "[1mOUTPUT TYPES[0m"
    inter_len: "Length (in residues) of the intersection between two features."
    inter_cov: "Coverage of the intersection between two features. The coverage\\n(inter_cov) is defined as\\ninter_cov = inter_len / inter_pair\\nwhere inter_len is the length of the intersection, pair_len is\\nthe total length covered by the pair of intersecting features."
    feature_map: "convert-features"
    all_coordinates: "Add columns with the coordinates of feature from f1 and f2 when\\nthere is an intersection. If features belong to set f2.not.f1,\\nindicate NA in the f1 columns (and reciprocally).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}