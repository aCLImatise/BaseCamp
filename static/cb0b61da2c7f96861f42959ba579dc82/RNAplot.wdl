version 1.0

task RNAplot {
  input {
    Int? layout_type
    File? output_format
    File? pre
    Int? post
  }
  command <<<
    RNAplot \
      ~{if defined(layout_type) then ("--layout-type " +  '"' + layout_type + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(pre) then ("--pre " +  '"' + pre + '"') else ""} \
      ~{if defined(post) then ("--post " +  '"' + post + '"') else ""}
  >>>
  parameter_meta {
    layout_type: "Choose the layout algorithm. Simple radial\\nlayout if 0, or naview if 1\\n(default=`1')"
    output_format: "|gml|xrna|svg\\nSpecify output format. Available formats are:\\nPostScript (ps), Graph Meta Language (gml),\\nScalable Vector Graphics (svg), and XRNA save\\nfile (xrna). Output filenames will end in\\n\\\".ps\\\" \\\".gml\\\" \\\".svg\\\" \\\".ss\\\",\\nrespectively.\\n(default=`ps')"
    pre: "Add annotation macros to postscript file, and\\nadd the postscript code in \\\"string\\\" just\\nbefore the code to draw the structure. This\\nis an easy way to add annotation."
    post: "Same as --pre but in contrast to adding the\\nannotation macros. E.g to mark position 15\\nwith circle use --post \\\"15 cmark\\\""
  }
  output {
    File out_stdout = stdout()
    File out_output_format = "${in_output_format}"
  }
}