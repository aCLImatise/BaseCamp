version 1.0

task HaystackTfActivityPlane {
  input {
    String? tfs
    File? motif_mapping_filename
    Directory? output_directory
    File? name
    Boolean? plot_all
    Float? rho_cut_off
    Float? tf_value_cut_to_ff
    String target_cell_type
    String haystack_motifs_output_folder
    String locations
  }
  command <<<
    haystack_tf_activity_plane \
      ~{target_cell_type} \
      ~{haystack_motifs_output_folder} \
      ~{locations} \
      ~{if defined(tfs) then ("-TFs " +  '"' + tfs + '"') else ""} \
      ~{if defined(motif_mapping_filename) then ("--motif_mapping_filename " +  '"' + motif_mapping_filename + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (plot_all) then "--plot_all" else ""} \
      ~{if defined(rho_cut_off) then ("--rho_cutoff " +  '"' + rho_cut_off + '"') else ""} \
      ~{if defined(tf_value_cut_to_ff) then ("--tf_value_cuttoff " +  '"' + tf_value_cut_to_ff + '"') else ""}
  >>>
  parameter_meta {
    tfs: "on Gene Expression-"
    motif_mapping_filename: "Custom motif to gene mapping file (the default is for\\nJASPAR CORE 2016 database)"
    output_directory: "Output directory (default: current directory)"
    name: "Define a custom output filename for the report"
    plot_all: "Disable the filter on the TF activity and correlation\\n(default z-score TF>0 and rho>0.3)"
    rho_cut_off: "The cutoff absolute correlation value (0.0 to 1) for\\nwhich activity plots are generated (default: 0.3)"
    tf_value_cut_to_ff: "The cutoff z-score tf_value for which activity plots\\nare generated (default: 0.0)"
    target_cell_type: "HAYSTACK Parameters"
    haystack_motifs_output_folder: "A path to a folder created by the haystack_motifs"
    locations: "target_cell_type      The sample name to use as a target for the analysis"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_name = "${in_name}"
  }
}