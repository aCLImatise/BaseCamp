version 1.0

task BlandAltmanPlotpy {
  input {
    String? input_dataset_wide
    File? design
    String? id
    File? group
    String? figure
    String? flag_dist
    String? flag_sample
    String? flag_feature
    Array[String] process_only
    Int? resid_cut_off
    Float? sample_flag_cut_off
    Float? feature_flag_cut_off
    Boolean? debug
  }
  command <<<
    bland_altman_plot_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(flag_dist) then ("--flag_dist " +  '"' + flag_dist + '"') else ""} \
      ~{if defined(flag_sample) then ("--flag_sample " +  '"' + flag_sample + '"') else ""} \
      ~{if defined(flag_feature) then ("--flag_feature " +  '"' + flag_feature + '"') else ""} \
      ~{if defined(process_only) then ("--process_only " +  '"' + process_only + '"') else ""} \
      ~{if defined(resid_cut_off) then ("--resid_cutoff " +  '"' + resid_cut_off + '"') else ""} \
      ~{if defined(sample_flag_cut_off) then ("--sample_flag_cutoff " +  '"' + sample_flag_cut_off + '"') else ""} \
      ~{if defined(feature_flag_cut_off) then ("--feature_flag_cutoff " +  '"' + feature_flag_cut_off + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    group: "Group/treatment identifier in design file [Optional]."
    figure: "Name of the output PDF for Bland-Altman plots."
    flag_dist: "Name of the output TSV for distribution flags."
    flag_sample: "Name of the output TSV for sample flags."
    flag_feature: "Name of the output TSV for feature flags."
    process_only: "Only process the given groups (list groups separated\\nby spaces) [Optional]."
    resid_cut_off: "Cutoff value for flagging outliers [default=3]."
    sample_flag_cut_off: "Proportion cutoff value when flagging samples\\n[default=0.20]."
    feature_flag_cut_off: "Proportion cutoff value when flagging features\\n[default=0.05]."
    debug: "Add debugging log output."
  }
  output {
    File out_stdout = stdout()
  }
}