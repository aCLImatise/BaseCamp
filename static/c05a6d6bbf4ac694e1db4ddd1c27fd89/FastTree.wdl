version 1.0

task FastTree {
  input {
    Boolean? bio_nj
    Boolean? nj
  }
  command <<<
    FastTree \
      ~{true="-bionj" false="" bio_nj} \
      ~{true="-nj" false="" nj}
  >>>
  parameter_meta {
    bio_nj: ": weighted joins as in BIONJ (default) FastTree will also weight joins during NNIs"
    nj: ": regular (unweighted) neighbor-joining"
  }
}