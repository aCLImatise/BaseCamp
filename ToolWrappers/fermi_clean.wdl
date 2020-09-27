version 1.0

task FermiClean {
  input {
    Int? read_maximum_neighbors
    Float? drop_neighbor_overlap
    Boolean? clean_the_graph
    Int? minimum_tip_length
    Int? minimum_tip_read
    Int? minimum_internal_unitig
    Int? minimum_overlap
    Float? minimum_relative_overlap
    Int? number_of_iterations
    Boolean? aggressive_bubble_popping
    Boolean? skip_bubble_simplification
    Float? minimum_coverage_keep
    Float? minimum_fraction_keep
    String in_dot_mog
  }
  command <<<
    fermi clean \
      ~{in_dot_mog} \
      ~{if defined(read_maximum_neighbors) then ("-N " +  '"' + read_maximum_neighbors + '"') else ""} \
      ~{if defined(drop_neighbor_overlap) then ("-d " +  '"' + drop_neighbor_overlap + '"') else ""} \
      ~{if (clean_the_graph) then "-C" else ""} \
      ~{if defined(minimum_tip_length) then ("-l " +  '"' + minimum_tip_length + '"') else ""} \
      ~{if defined(minimum_tip_read) then ("-e " +  '"' + minimum_tip_read + '"') else ""} \
      ~{if defined(minimum_internal_unitig) then ("-i " +  '"' + minimum_internal_unitig + '"') else ""} \
      ~{if defined(minimum_overlap) then ("-o " +  '"' + minimum_overlap + '"') else ""} \
      ~{if defined(minimum_relative_overlap) then ("-R " +  '"' + minimum_relative_overlap + '"') else ""} \
      ~{if defined(number_of_iterations) then ("-n " +  '"' + number_of_iterations + '"') else ""} \
      ~{if (aggressive_bubble_popping) then "-A" else ""} \
      ~{if (skip_bubble_simplification) then "-S" else ""} \
      ~{if defined(minimum_coverage_keep) then ("-w " +  '"' + minimum_coverage_keep + '"') else ""} \
      ~{if defined(minimum_fraction_keep) then ("-r " +  '"' + minimum_fraction_keep + '"') else ""}
  >>>
  parameter_meta {
    read_maximum_neighbors: "read maximum INT neighbors per node [512]"
    drop_neighbor_overlap: "drop a neighbor if relative overlap ratio below FLOAT [0.70]"
    clean_the_graph: "clean the graph"
    minimum_tip_length: "minimum tip length [300]"
    minimum_tip_read: "minimum tip read count [0]"
    minimum_internal_unitig: "minimum internal unitig read count [3]"
    minimum_overlap: "minimum overlap [60]"
    minimum_relative_overlap: "minimum relative overlap ratio [0.80]"
    number_of_iterations: "number of iterations [3]"
    aggressive_bubble_popping: "aggressive bubble popping"
    skip_bubble_simplification: "skip bubble simplification"
    minimum_coverage_keep: "minimum coverage to keep a bubble [10.00]"
    minimum_fraction_keep: "minimum fraction to keep a bubble [0.15]"
    in_dot_mog: ""
  }
  output {
    File out_stdout = stdout()
  }
}