version 1.0

task _emma {
  input {
    Boolean? only_d_end
    Boolean? gap_dist
  }
  command <<<
    _emma \
      ~{true="-onlydend" false="" only_d_end} \
      ~{true="-gapdist" false="" gap_dist}
  >>>
  parameter_meta {
    only_d_end: "toggle     [N] Only produce dendrogram file"
    gap_dist: "integer    [8] Gap separation distance: tries to decrease the chances of gaps being too close to each other. Gaps that are less than this distance apart are penalised more than other gaps. This does not prevent close gaps; it makes them less frequent, promoting a block-like appearance of the alignment. (Positive integer)"
  }
}