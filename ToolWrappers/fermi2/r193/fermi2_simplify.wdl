version 1.0

task Fermi2Simplify {
  input {
    Int? read_maximum_neighbors
    Boolean? read_graph_modifications
    Boolean? attempt_fix_force
    Int? minimum_overlap_merge
    Float? drop_neighbor_overlap
    Boolean? clean_the_graph
    Int? minimum_tip_length
    Int? minimum_tip_read
    Int? minimum_internal_unitig
    Int? minimum_overlap
    Float? minimum_relative_overlap
    Boolean? aggressive_bubble_popping
    Boolean? skip_bubble_simplification
    Float? minimum_coverage_keep
    Float? minimum_fraction_keep
    Array[Int] trim_intbp_dp
    String in_dot_mag
  }
  command <<<
    fermi2 simplify \
      ~{in_dot_mag} \
      ~{if defined(read_maximum_neighbors) then ("-N " +  '"' + read_maximum_neighbors + '"') else ""} \
      ~{if (read_graph_modifications) then "-O" else ""} \
      ~{if (attempt_fix_force) then "-F" else ""} \
      ~{if defined(minimum_overlap_merge) then ("-m " +  '"' + minimum_overlap_merge + '"') else ""} \
      ~{if defined(drop_neighbor_overlap) then ("-d " +  '"' + drop_neighbor_overlap + '"') else ""} \
      ~{if (clean_the_graph) then "-C" else ""} \
      ~{if defined(minimum_tip_length) then ("-l " +  '"' + minimum_tip_length + '"') else ""} \
      ~{if defined(minimum_tip_read) then ("-e " +  '"' + minimum_tip_read + '"') else ""} \
      ~{if defined(minimum_internal_unitig) then ("-i " +  '"' + minimum_internal_unitig + '"') else ""} \
      ~{if defined(minimum_overlap) then ("-o " +  '"' + minimum_overlap + '"') else ""} \
      ~{if defined(minimum_relative_overlap) then ("-R " +  '"' + minimum_relative_overlap + '"') else ""} \
      ~{if (aggressive_bubble_popping) then "-A" else ""} \
      ~{if (skip_bubble_simplification) then "-S" else ""} \
      ~{if defined(minimum_coverage_keep) then ("-w " +  '"' + minimum_coverage_keep + '"') else ""} \
      ~{if defined(minimum_fraction_keep) then ("-r " +  '"' + minimum_fraction_keep + '"') else ""} \
      ~{if defined(trim_intbp_dp) then ("-T " +  '"' + trim_intbp_dp + '"') else ""}
  >>>
  parameter_meta {
    read_maximum_neighbors: "read maximum INT neighbors per node [512]"
    read_graph_modifications: "read the graph without modifications"
    attempt_fix_force: "don't attempt to fix erroneous edges (force -O)"
    minimum_overlap_merge: "minimum overlap to merge [0]"
    drop_neighbor_overlap: "drop a neighbor if relative overlap ratio below FLOAT [0.60]"
    clean_the_graph: "clean the graph"
    minimum_tip_length: "minimum tip length [300]"
    minimum_tip_read: "minimum tip read count [0]"
    minimum_internal_unitig: "minimum internal unitig read count [3]"
    minimum_overlap: "minimum overlap [0]"
    minimum_relative_overlap: "minimum relative overlap ratio [0.70]"
    aggressive_bubble_popping: "aggressive bubble popping"
    skip_bubble_simplification: "skip bubble simplification"
    minimum_coverage_keep: "minimum coverage to keep a bubble [10.00]"
    minimum_fraction_keep: "minimum fraction to keep a bubble [0.15]"
    trim_intbp_dp: "trim INT1-bp from an open end if DP below INT2 [0,6]"
    in_dot_mag: ""
  }
  output {
    File out_stdout = stdout()
  }
}