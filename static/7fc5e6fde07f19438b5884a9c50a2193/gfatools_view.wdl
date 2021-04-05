version 1.0

task GfatoolsView {
  input {
    Int? verbose_level
    File? file_segment_list
    Int? region_based_region
    Int? subset_radius_effective
    Boolean? delete_list_segments
    Boolean? remove_multiple_edges
    Boolean? do_print_sequences
    String in_dot_gfa
  }
  command <<<
    gfatools view \
      ~{in_dot_gfa} \
      ~{if defined(verbose_level) then ("-v " +  '"' + verbose_level + '"') else ""} \
      ~{if defined(file_segment_list) then ("-l " +  '"' + file_segment_list + '"') else ""} \
      ~{if defined(region_based_region) then ("-R " +  '"' + region_based_region + '"') else ""} \
      ~{if defined(subset_radius_effective) then ("-r " +  '"' + subset_radius_effective + '"') else ""} \
      ~{if (delete_list_segments) then "-d" else ""} \
      ~{if (remove_multiple_edges) then "-M" else ""} \
      ~{if (do_print_sequences) then "-S" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gfatools:0.5--hed695b0_0"
  }
  parameter_meta {
    verbose_level: "verbose level [2]"
    file_segment_list: "/@FILE  segment list to subset []"
    region_based_region: "a region like chr1:101-200 (a 1-based closed region) []"
    subset_radius_effective: "subset radius (effective with -l) [0]"
    delete_list_segments: "delete the list of segments (requiring -l; ignoring -r)"
    remove_multiple_edges: "remove multiple edges"
    do_print_sequences: "don't print sequences"
    in_dot_gfa: ""
  }
  output {
    File out_stdout = stdout()
  }
}