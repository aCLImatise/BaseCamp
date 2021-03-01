version 1.0

task Barriers {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? verbose
    Boolean? quiet
    String? graph
    String? moves
    Boolean? connected
    Boolean? b_size
    Boolean? s_size
    Int? max
    Float? minh
    Boolean? saddle
    Boolean? rates
    Int? path
    File? map_struc
    String rna_no_lp
    String space_dot
  }
  command <<<
    barriers \
      ~{rna_no_lp} \
      ~{space_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(moves) then ("--moves " +  '"' + moves + '"') else ""} \
      ~{if (connected) then "--connected" else ""} \
      ~{if (b_size) then "--bsize" else ""} \
      ~{if (s_size) then "--ssize" else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(minh) then ("--minh " +  '"' + minh + '"') else ""} \
      ~{if (saddle) then "--saddle" else ""} \
      ~{if (rates) then "--rates" else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(map_struc) then ("--mapstruc " +  '"' + map_struc + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Be verbose, i.e. print more information.\\n(default=off)"
    quiet: "Be quiet (also inhibit PS tree output).\\n(default=off)"
    graph: "Define type of the graph, i.e. configuration"
    moves: "Select the move-set for generating neighbors of\\na configuration (if Graph allows several\\ndifferent ones)."
    connected: "Restrict the output to the connected component.\\n(default=off)"
    b_size: "Print the size of of each basin in output.\\n(default=off)"
    s_size: "Print saddle component sizes.  (default=off)"
    max: "Compute only the lowest <num> local minima.\\n(default=`100')"
    minh: "Print only minima with energy barrier greater\\nthan delta.  (default=`0.000001')"
    saddle: "Print the saddle point conformations in output.\\n(default=off)"
    rates: "Compute rates between macro states (basins).\\n(default=off)"
    path: "=<l2>          Backtrack an optimal path between local minimum\\nl2 and l1."
    map_struc: "Map conformations to minima in the tree."
    rna_no_lp: "for a landscape of canonical RNA structures."
    space_dot: "(default=`RNA')"
  }
  output {
    File out_stdout = stdout()
  }
}