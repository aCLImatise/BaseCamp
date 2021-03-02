version 1.0

task SHERPAS {
  input {
    Boolean? path_phylokmer_database
    Boolean? path_strainalignment_file
    Boolean? path_query_file
    File? path_output_directory
    Boolean? window_size_default
    Boolean? method_f_r
    Boolean? threshold_unassigned_regions
    Boolean? activates_circularity_options
    Boolean? changes_output_layout
    Boolean? disables_posttreatment_unassigned
  }
  command <<<
    SHERPAS \
      ~{if (path_phylokmer_database) then "-d" else ""} \
      ~{if (path_strainalignment_file) then "-g" else ""} \
      ~{if (path_query_file) then "-q" else ""} \
      ~{if (path_output_directory) then "-o" else ""} \
      ~{if (window_size_default) then "-w" else ""} \
      ~{if (method_f_r) then "-m" else ""} \
      ~{if (threshold_unassigned_regions) then "-t" else ""} \
      ~{if (activates_circularity_options) then "-c" else ""} \
      ~{if (changes_output_layout) then "-l" else ""} \
      ~{if (disables_posttreatment_unassigned) then "-k" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sherpas:1.0.2--h78a066a_0"
  }
  parameter_meta {
    path_phylokmer_database: "Path to the phylo-kmer database"
    path_strainalignment_file: "Path to the strain-alignment file"
    path_query_file: "Path to the query file"
    path_output_directory: "Path to the output directory"
    window_size_default: "Window size (default=300)"
    method_f_r: "Method (F or R, default=F)"
    threshold_unassigned_regions: "Threshold for unassigned regions (default=100 [F] or 0.99 [R])"
    activates_circularity_options: "Activates circularity options (to be used for circular queries)"
    changes_output_layout: "Changes output layout"
    disables_posttreatment_unassigned: "Disables post-treatment of unassigned regions"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
  }
}