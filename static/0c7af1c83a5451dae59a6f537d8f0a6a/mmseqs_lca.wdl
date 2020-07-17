version 1.0

task MmseqsLca {
  input {
    Boolean? lca_ranks
    Boolean? blacklist
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs lca \
      ~{true="--lca-ranks" false="" lca_ranks} \
      ~{true="--blacklist" false="" blacklist} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    lca_ranks: "Ranks to return in LCA computation                          "
    blacklist: "12908,28384     Comma separted list of ignored taxa in LCA computation      "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}