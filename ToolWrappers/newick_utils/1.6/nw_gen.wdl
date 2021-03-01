version 1.0

task NwGen {
  input {
    Float? sets_time_limit
    Boolean? generate_geometric_tree
    Float? sets_length_default
    Float? sets_probability_node
    Int? sets_generators_seeddefault
  }
  command <<<
    nw_gen \
      ~{if defined(sets_time_limit) then ("-d " +  '"' + sets_time_limit + '"') else ""} \
      ~{if (generate_geometric_tree) then "-g" else ""} \
      ~{if defined(sets_length_default) then ("-l " +  '"' + sets_length_default + '"') else ""} \
      ~{if defined(sets_probability_node) then ("-p " +  '"' + sets_probability_node + '"') else ""} \
      ~{if defined(sets_generators_seeddefault) then ("-s " +  '"' + sets_generators_seeddefault + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sets_time_limit: ": sets the maximum depth (time limit). Default: 3.0\\nOnly for time-limited trees."
    generate_geometric_tree: ": generate a geometric tree instead of a time-limited one.\\nEach node has a fixed probability of having 2 children."
    sets_length_default: ": sets the average branch length (default: 1.0)\\nOnly for time-limited trees."
    sets_probability_node: ": sets the probability of a node having (2) children.\\nOnly for geometric trees. WARNING: if > 0.5, the tree will\\nprobably grow 'forever'. On the other hand, low values will\\nresult in most trees having only a root, as the probability\\nthat the root has no children is 1-p, like for every other node."
    sets_generators_seeddefault: ": sets the pseudorandom number generator's seed\\n(default: 0.1)"
  }
  output {
    File out_stdout = stdout()
  }
}