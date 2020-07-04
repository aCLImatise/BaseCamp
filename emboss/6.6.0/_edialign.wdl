version 1.0

task _edialign {
  input {
    Boolean? overlap_w
    Boolean? linkage
    Boolean? max_frag_l
  }
  command <<<
    _edialign \
      ~{true="-overlapw" false="" overlap_w} \
      ~{true="-linkage" false="" linkage} \
      ~{true="-maxfragl" false="" max_frag_l}
  >>>
  parameter_meta {
    overlap_w: "selection  [default (when Nseq =< 35)] By default overlap weights are used when Nseq =<35 but you can set this to 'yes' or 'no'"
    linkage: "menu       [UPGMA] Clustering method to construct sequence tree (UPGMA, minimum linkage or maximum linkage) (Values: UPGMA (UPGMA); max (maximum linkage); min (minimum linkage))"
    max_frag_l: "integer    [40] Maximum fragment length (Integer 0 or more)"
  }
}