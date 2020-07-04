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
    String? minh
    Boolean? saddle
    Boolean? rates
    String? path
    File? map_struc
  }
  command <<<
    barriers \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(moves) then ("--moves " +  '"' + moves + '"') else ""} \
      ~{true="--connected" false="" connected} \
      ~{true="--bsize" false="" b_size} \
      ~{true="--ssize" false="" s_size} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(minh) then ("--minh " +  '"' + minh + '"') else ""} \
      ~{true="--saddle" false="" saddle} \
      ~{true="--rates" false="" rates} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(map_struc) then ("--mapstruc " +  '"' + map_struc + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Be verbose, i.e. print more information. (default=off)"
    quiet: "Be quiet (also inhibit PS tree output). (default=off)"
    graph: "Define type of the graph, i.e. configuration space.  (default=`RNA')"
    moves: "Select the move-set for generating neighbors of a configuration (if Graph allows several different ones)."
    connected: "Restrict the output to the connected component. (default=off)"
    b_size: "Print the size of of each basin in output. (default=off)"
    s_size: "Print saddle component sizes.  (default=off)"
    max: "Compute only the lowest <num> local minima. (default=`100')"
    minh: "Print only minima with energy barrier greater than delta.  (default=`0.000001')"
    saddle: "Print the saddle point conformations in output. (default=off)"
    rates: "Compute rates between macro states (basins). (default=off)"
    path: "=<l2>          Backtrack an optimal path between local minimum l2 and l1."
    map_struc: "Map conformations to minima in the tree."
  }
}