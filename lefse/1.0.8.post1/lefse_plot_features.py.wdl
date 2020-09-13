version 1.0

task LefseplotFeaturespy {
  input {
    String? width
    String? height
    Float? top
    Float? bot
    Int? title_font_size
    Int? class_font_size
    String? class_label_pos
    String? sub_cl_mean
    String? sub_cl_median
    Int? font_size
    String? unused
    File? format
    String? wheter_plot_features
    String? feature_name
    Int? feature_num
    String? archive
    String? background_color
    String? dpi
    String output_file
  }
  command <<<
    lefse_plot_features_py \
      ~{output_file} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(bot) then ("--bot " +  '"' + bot + '"') else ""} \
      ~{if defined(title_font_size) then ("--title_font_size " +  '"' + title_font_size + '"') else ""} \
      ~{if defined(class_font_size) then ("--class_font_size " +  '"' + class_font_size + '"') else ""} \
      ~{if defined(class_label_pos) then ("--class_label_pos " +  '"' + class_label_pos + '"') else ""} \
      ~{if defined(sub_cl_mean) then ("--subcl_mean " +  '"' + sub_cl_mean + '"') else ""} \
      ~{if defined(sub_cl_median) then ("--subcl_median " +  '"' + sub_cl_median + '"') else ""} \
      ~{if defined(font_size) then ("--font_size " +  '"' + font_size + '"') else ""} \
      ~{if defined(unused) then ("-n " +  '"' + unused + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(wheter_plot_features) then ("-f " +  '"' + wheter_plot_features + '"') else ""} \
      ~{if defined(feature_name) then ("--feature_name " +  '"' + feature_name + '"') else ""} \
      ~{if defined(feature_num) then ("--feature_num " +  '"' + feature_num + '"') else ""} \
      ~{if defined(archive) then ("--archive " +  '"' + archive + '"') else ""} \
      ~{if defined(background_color) then ("--background_color " +  '"' + background_color + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""}
  >>>
  parameter_meta {
    width: ""
    height: ""
    top: "set maximum y limit (-1.0 means automatic limit)"
    bot: "set minimum y limit (default 0.0, -1.0 means automatic\\nlimit)"
    title_font_size: ""
    class_font_size: ""
    class_label_pos: ""
    sub_cl_mean: ""
    sub_cl_median: ""
    font_size: ""
    unused: "unused"
    format: "the format for the output file"
    wheter_plot_features: "wheter to plot all features (all), only those\\ndifferentially abundant according to LEfSe or only one\\n(the one given with --feature_name)"
    feature_name: "The name of the feature to plot (levels separated by\\n.)"
    feature_num: "The number of the feature to plot"
    archive: ""
    background_color: "set the color of the background"
    dpi: ""
    output_file: "the file for the output (the zip file if an archive is\\nrequired, the output directory otherwise)"
  }
  output {
    File out_stdout = stdout()
    File out_format = "${in_format}"
  }
}