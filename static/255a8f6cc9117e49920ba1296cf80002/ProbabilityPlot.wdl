version 1.0

task ProbabilityPlot {
  input {
    Boolean? log_one_zero
    Boolean? matrix
    File? svg
    File? text
    File? desc
    Boolean? entries
    Boolean? maximum
    Boolean? minimum
    File input_file
    File output_file
  }
  command <<<
    ProbabilityPlot \
      ~{input_file} \
      ~{output_file} \
      ~{if (log_one_zero) then "--log10" else ""} \
      ~{if (matrix) then "--matrix" else ""} \
      ~{if (svg) then "--svg" else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (desc) then "--desc" else ""} \
      ~{if (entries) then "--entries" else ""} \
      ~{if (maximum) then "--maximum" else ""} \
      ~{if (minimum) then "--minimum" else ""}
  >>>
  parameter_meta {
    log_one_zero: "Specifies that the input file format is a dot plot text file of log10 base\\npair probabilities. Giving this flag with one of the text options would\\ngive a file identical to the input file."
    matrix: "Specifies that the input file format is a plain text matrix of base pair\\nprobabilities."
    svg: "Specify that the output file should be an SVG image file, rather than a\\nPostscript image file."
    text: "Specifies that output should be a dot plot (text) file."
    desc: "Configure the output of descriptions. Valid values are: (1) \\\"\\\" or \\\"~none\\\"\\n-- Do not write a description (2) \\\"~file\\\" -- If the default description\\ncorresponds to a file or path, use only the base name of the path (i.e. no\\ndirectory or file extension). (3) \\\"~~\\\" or \\\"~default\\\" -- Use the default\\ndescription (this is the same as not specifying the flag) (4)\\n\\\"~list|DESC1|DESC2|DESC3\\\" -- use this syntax when the output is expected to\\nhave more than one plot. It specifies a list of descriptions will be\\napplied in the order given. The character immediately after \\\"~list\\\" will be\\nused as the separator (i.e. it need not be the bar (|) character. (5) Any\\nother value is assumed to be the literal description you want to have\\ndisplayed in the plot legend."
    entries: "Specifies the number of colors in the dot plot.\\nDefault is 5 colors. Minimum is 3 colors. Maximum is 15 colors."
    maximum: "Specifies the maximum value that is viewable in the plot.\\nDefault is the largest allowable point in a given data file. If the given\\nvalue is greater than the default, it is ignored."
    minimum: "Specifies the minimum value that is viewable in the plot.\\nDefault is the smallest allowable point in a given data file. If the given\\nvalue is less than the default, it is ignored.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_svg = "${in_svg}"
    File out_text = "${in_text}"
    File out_desc = "${in_desc}"
    File out_output_file = "${in_output_file}"
  }
}