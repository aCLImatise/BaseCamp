version 1.0

task LefseplotRespy {
  input {
    File? feature_font_size
    File? format
    String? class_legend_font_size
    String? background_color
    Int? sub_clades
    Int? max_feature_len
    String? all_feats
    Boolean? report_features
    String input_file
    String output_file
  }
  command <<<
    lefse_plot_res_py \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(feature_font_size) then ("--feature_font_size " +  '"' + feature_font_size + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(class_legend_font_size) then ("--class_legend_font_size " +  '"' + class_legend_font_size + '"') else ""} \
      ~{if defined(background_color) then ("--background_color " +  '"' + background_color + '"') else ""} \
      ~{if defined(sub_clades) then ("--subclades " +  '"' + sub_clades + '"') else ""} \
      ~{if defined(max_feature_len) then ("--max_feature_len " +  '"' + max_feature_len + '"') else ""} \
      ~{if defined(all_feats) then ("--all_feats " +  '"' + all_feats + '"') else ""} \
      ~{if (report_features) then "--report_features" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    feature_font_size: "the file for the output image"
    format: "the format for the output file"
    class_legend_font_size: "only for vertical histograms"
    background_color: "set the color of the background"
    sub_clades: "number of label levels to be dislayed (starting from\\nthe leaves, -1 means all the levels, 1 is default )"
    max_feature_len: "Maximum length of feature strings (def 60)"
    all_feats: "Plot only species resolved OTUs (as opposed to all\\nlevels)"
    report_features: "Report important features to STDOUT"
    input_file: "tab delimited input file"
    output_file: "the file for the output image"
  }
  output {
    File out_stdout = stdout()
    File out_feature_font_size = "${in_feature_font_size}"
    File out_format = "${in_format}"
  }
}