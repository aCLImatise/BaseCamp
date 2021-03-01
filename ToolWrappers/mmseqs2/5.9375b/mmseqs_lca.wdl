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
      ~{if (lca_ranks) then "--lca-ranks" else ""} \
      ~{if (blacklist) then "--blacklist" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    lca_ranks: "Ranks to return in LCA computation"
    blacklist: "12908,28384     Comma separted list of ignored taxa in LCA computation"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}