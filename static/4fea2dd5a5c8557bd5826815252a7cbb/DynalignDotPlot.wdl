version 1.0

task DynalignDotPlot {
  input {
    Boolean? sequence_two
    File? svg
    File? text
    Boolean? entries
    Boolean? maximum
    Boolean? minimum
    File dyn_align_save_file
    File output_file
  }
  command <<<
    DynalignDotPlot \
      ~{dyn_align_save_file} \
      ~{output_file} \
      ~{if (sequence_two) then "--sequence2" else ""} \
      ~{if (svg) then "--svg" else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (entries) then "--entries" else ""} \
      ~{if (maximum) then "--maximum" else ""} \
      ~{if (minimum) then "--minimum" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sequence_two: "Specifies that the dot plot should be the second sequence. If no sequence\\nis specified, the plot is the first sequence."
    svg: "Specify that the output file should be an SVG image file, rather than a\\nPostscript image file."
    text: "Specifies that output should be a dot plot (text) file."
    entries: "Specifies the number of colors in the dot plot.\\nDefault is 5 colors. Minimum is 3 colors. Maximum is 15 colors."
    maximum: "Specifies the maximum value that is viewable in the plot.\\nDefault is the largest allowable point in a given data file. If the given\\nvalue is greater than the default, it is ignored."
    minimum: "Specifies the minimum value that is viewable in the plot.\\nDefault is the smallest allowable point in a given data file. If the given\\nvalue is less than the default, it is ignored.\\n"
    dyn_align_save_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_svg = "${in_svg}"
    File out_text = "${in_text}"
    File out_output_file = "${in_output_file}"
  }
}