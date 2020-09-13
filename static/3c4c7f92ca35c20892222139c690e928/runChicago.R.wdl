version 1.0

task RunChicagoR {
  input {
    Boolean? print_memory
    Boolean? rda
    Boolean? save_df_only
    Boolean? examples_full_range
    Boolean? en_full_cis_range
    Boolean? en_trans
    Boolean? features_only
    File? opts
    File? settings_file
    File? design_dir
    Int? cut_off
    File? export_format
    String? export_order
    Float? examples_prox_dist
    File? output_dir
    String? en_feat_files
    File? en_feat_list
    Directory? en_feat_folder
    Int? en_min_dist
    Int? en_max_dist
    Int? en_sample_no
  }
  command <<<
    runChicago_R \
      ~{if (print_memory) then "--print-memory" else ""} \
      ~{if (rda) then "--rda" else ""} \
      ~{if (save_df_only) then "--save-df-only" else ""} \
      ~{if (examples_full_range) then "--examples-full-range" else ""} \
      ~{if (en_full_cis_range) then "--en-full-cis-range" else ""} \
      ~{if (en_trans) then "--en-trans" else ""} \
      ~{if (features_only) then "--features-only" else ""} \
      ~{if defined(opts) then ("--opts " +  '"' + opts + '"') else ""} \
      ~{if defined(settings_file) then ("--settings-file " +  '"' + settings_file + '"') else ""} \
      ~{if defined(design_dir) then ("--design-dir " +  '"' + design_dir + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(export_format) then ("--export-format " +  '"' + export_format + '"') else ""} \
      ~{if defined(export_order) then ("--export-order " +  '"' + export_order + '"') else ""} \
      ~{if defined(examples_prox_dist) then ("--examples-prox-dist " +  '"' + examples_prox_dist + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(en_feat_files) then ("--en-feat-files " +  '"' + en_feat_files + '"') else ""} \
      ~{if defined(en_feat_list) then ("--en-feat-list " +  '"' + en_feat_list + '"') else ""} \
      ~{if defined(en_feat_folder) then ("--en-feat-folder " +  '"' + en_feat_folder + '"') else ""} \
      ~{if defined(en_min_dist) then ("--en-min-dist " +  '"' + en_min_dist + '"') else ""} \
      ~{if defined(en_max_dist) then ("--en-max-dist " +  '"' + en_max_dist + '"') else ""} \
      ~{if defined(en_sample_no) then ("--en-sample-no " +  '"' + en_sample_no + '"') else ""}
  >>>
  parameter_meta {
    print_memory: "Should chicagoPipeline print out memory use?"
    rda: "Save the Chicago object as an RDa image (instead of the default RDS)"
    save_df_only: "Save only the data part of the Chicago object, as a data frame (for compatibility)"
    examples_full_range: "Also plot examples for the full distance range"
    en_full_cis_range: "Assess the enrichment for features for the full distance range [same chromosome only; use --en-trans in addition to include trans-interactions] (can be very slow!)"
    en_trans: "Include trans-interactions into enrichment analysis"
    features_only: "Re-run feature enrichment analysis with Chicago output files. With this option, <input-files> must be either a single Rds file (must contain full Chicago objects) or '-', in which case the file location will be inferred automatically from <output-prefix> and files added to the corresponding folder."
    opts: "RDS file containing argument values"
    settings_file: "Full path to Chicago settings file"
    design_dir: "Folder with capture design files (note the settings file has priority over these) [default: ]"
    cut_off: "Score cutoff for writing out peaks and testing feature enrichment [default: 5]"
    export_format: "File format for writing out peaks: one or more of the following: seqMonk,interBed,washU_text,washU_track (comma-separated) [default: washU_text]"
    export_order: "Should the results be ordered by \\\"score\\\" or genomic \\\"position\\\"? [default: position]"
    examples_prox_dist: "The distance limit for plotting \\\"proximal\\\" examples [default: 1e+06]"
    output_dir: "The name of the output directory (can be a full path) [default: <output-prefix>]"
    en_feat_files: "A comma-separated list of files with genomic feature coordinates for computing peaks' enrichment"
    en_feat_list: "Same as above but the supplied file contains the feature names and\\nlocations of feature files (in the format <feature-name> <feature-file-location>"
    en_feat_folder: "The folder, in which all feature files are located (if provided, --en-feature-file(s) don't need to list the full path)"
    en_min_dist: "The lower distance limit for computing enrichment for features [default: 0]"
    en_max_dist: "The upper distance limit for computing enrichment for features [default: 1e+06]"
    en_sample_no: "The number of negative samples for computing enrichment for features [default: 100]"
  }
  output {
    File out_stdout = stdout()
    File out_export_format = "${in_export_format}"
    File out_output_dir = "${in_output_dir}"
  }
}