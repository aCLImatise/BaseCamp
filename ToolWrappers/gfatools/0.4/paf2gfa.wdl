version 1.0

task Paf2gfa {
  input {
    Boolean? directions_arc_present
    Boolean? keep_unidirectional_edges
    Boolean? cut_filter_initial
    Int? max_overhang_length
    Int? min_overlap_length
    Boolean? apply_graph_cleaning
    Boolean? generate_unitigs
    File? input_reads
    String in_dot_paf
  }
  command <<<
    paf2gfa \
      ~{in_dot_paf} \
      ~{if (directions_arc_present) then "-b" else ""} \
      ~{if (keep_unidirectional_edges) then "-U" else ""} \
      ~{if (cut_filter_initial) then "-f" else ""} \
      ~{if defined(max_overhang_length) then ("-h " +  '"' + max_overhang_length + '"') else ""} \
      ~{if defined(min_overlap_length) then ("-o " +  '"' + min_overlap_length + '"') else ""} \
      ~{if (apply_graph_cleaning) then "-c" else ""} \
      ~{if (generate_unitigs) then "-u" else ""} \
      ~{if defined(input_reads) then ("-i " +  '"' + input_reads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gfatools:0.4--hed695b0_0"
  }
  parameter_meta {
    directions_arc_present: "both directions of an arc are present in input"
    keep_unidirectional_edges: "keep unidirectional edges (effective with -b)"
    cut_filter_initial: "cut and filter initial hits"
    max_overhang_length: "max overhang length [100]"
    min_overlap_length: "min overlap length [500]"
    apply_graph_cleaning: "apply graph cleaning (up to 3)"
    generate_unitigs: "generate unitigs"
    input_reads: "input reads []"
    in_dot_paf: ""
  }
  output {
    File out_stdout = stdout()
  }
}