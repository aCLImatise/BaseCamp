version 1.0

task FastTree {
  input {
    Boolean? fastest
    Int? to_pm
    Int? close
    Int? refresh
    Boolean? bio_nj
    Boolean? nj
  }
  command <<<
    FastTree \
      ~{if (fastest) then "-fastest" else ""} \
      ~{if defined(to_pm) then ("-topm " +  '"' + to_pm + '"') else ""} \
      ~{if defined(close) then ("-close " +  '"' + close + '"') else ""} \
      ~{if defined(refresh) then ("-refresh " +  '"' + refresh + '"') else ""} \
      ~{if (bio_nj) then "-bionj" else ""} \
      ~{if (nj) then "-nj" else ""}
  >>>
  parameter_meta {
    fastest: "-- search the visible set (the top hit for each node) only\\nUnlike the original fast neighbor-joining, -fastest updates visible(C)\\nafter joining A and B if join(AB,C) is better than join(C,visible(C))"
    to_pm: "-- set the top-hit list size to parameter*sqrt(N)\\nFastTree estimates the top m hits of a leaf from the\\ntop 2*m hits of a 'close' neighbor, where close is\\ndefined as d(seed,close) < 0.75 * d(seed, hit of rank 2*m),\\nand updates the top-hits as joins proceed"
    close: "-- modify the close heuristic, lower is more conservative"
    refresh: "-- compare a joined node to all other nodes if its\\ntop-hit list is less than 80% of the desired length,\\nor if the age of the top-hit list is log2(m) or greater"
    bio_nj: ": weighted joins as in BIONJ (default)\\nFastTree will also weight joins during NNIs"
    nj: ": regular (unweighted) neighbor-joining"
  }
  output {
    File out_stdout = stdout()
  }
}