version 1.0

task LefseplotFeaturespy {
  input {
    Float? height
    Float? bot
    Int? title_font_size
    File? format
    String? wheter_plot_features
    String? feature_name
    Int? feature_num
    String? background_color
    String output_file
  }
  command <<<
    lefse_plot_features_py \
      ~{output_file} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(bot) then ("--bot " +  '"' + bot + '"') else ""} \
      ~{if defined(title_font_size) then ("--title_font_size " +  '"' + title_font_size + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(wheter_plot_features) then ("-f " +  '"' + wheter_plot_features + '"') else ""} \
      ~{if defined(feature_name) then ("--feature_name " +  '"' + feature_name + '"') else ""} \
      ~{if defined(feature_num) then ("--feature_num " +  '"' + feature_num + '"') else ""} \
      ~{if defined(background_color) then ("--background_color " +  '"' + background_color + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    height: "set maximum y limit (-1.0 means automatic limit)"
    bot: "set minimum y limit (default 0.0, -1.0 means automatic\\nlimit)"
    title_font_size: "unused"
    format: "the format for the output file"
    wheter_plot_features: "wheter to plot all features (all), only those\\ndifferentially abundant according to LEfSe or only one\\n(the one given with --feature_name)"
    feature_name: "The name of the feature to plot (levels separated by\\n.)"
    feature_num: "The number of the feature to plot"
    background_color: "set the color of the background"
    output_file: "the file for the output (the zip file if an archive is\\nrequired, the output directory otherwise)"
  }
  output {
    File out_stdout = stdout()
    File out_format = "${in_format}"
  }
}