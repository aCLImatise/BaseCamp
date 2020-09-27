version 1.0

task LefseplotFeaturespy {
  input {
    String? height
    String? width
    String output_file
  }
  command <<<
    lefse_plot_features_py \
      ~{output_file} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""}
  >>>
  parameter_meta {
    height: ""
    width: ""
    output_file: "the file for the output (the zip file if an archive is\\nrequired, the output directory otherwise)"
  }
  output {
    File out_stdout = stdout()
  }
}