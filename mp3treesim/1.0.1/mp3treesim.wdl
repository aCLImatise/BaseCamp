version 1.0

task Mp3treesim {
  input {
    Boolean? run_mptreesim_intersection
    Boolean? run_mptreesim_union
    Boolean? run_mptreesim_geometric
    String tree
  }
  command <<<
    mp3treesim \
      ~{tree} \
      ~{true="-i" false="" run_mptreesim_intersection} \
      ~{true="-u" false="" run_mptreesim_union} \
      ~{true="-g" false="" run_mptreesim_geometric}
  >>>
  parameter_meta {
    run_mptreesim_intersection: "Run MP3-treesim in Intersection mode."
    run_mptreesim_union: "Run MP3-treesim in Union mode."
    run_mptreesim_geometric: "Run MP3-treesim in Geometric mode."
    tree: "Paths to the trees"
  }
}