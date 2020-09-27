version 1.0

task LefseplotRespy {
  input {
    Int? feature_font_size
    String input_file
    String output_file
  }
  command <<<
    lefse_plot_res_py \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(feature_font_size) then ("--feature_font_size " +  '"' + feature_font_size + '"') else ""}
  >>>
  parameter_meta {
    feature_font_size: ""
    input_file: "tab delimited input file"
    output_file: "the file for the output image"
  }
  output {
    File out_stdout = stdout()
  }
}