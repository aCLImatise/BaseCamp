version 1.0

task RNAplot {
  input {
    Int? layout_type
    String? output_format
    String? pre
    String? post
  }
  command <<<
    RNAplot \
      ~{if defined(layout_type) then ("--layout-type " +  '"' + layout_type + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(pre) then ("--pre " +  '"' + pre + '"') else ""} \
      ~{if defined(post) then ("--post " +  '"' + post + '"') else ""}
  >>>
  parameter_meta {
    layout_type: "Choose the layout algorithm. Simple radial  layout if 0, or naview if 1 (default=`1')"
    output_format: "|gml|xrna|svg Specify output format. Available formats are:  PostScript (ps), Graph Meta Language (gml),  Scalable Vector Graphics (svg), and XRNA save  file (xrna). Output filenames will end in  \".ps\" \".gml\" \".svg\" \".ss\",  respectively. (default=`ps')"
    pre: "Add annotation macros to postscript file, and  add the postscript code in \"string\" just  before the code to draw the structure. This  is an easy way to add annotation."
    post: "Same as --pre but in contrast to adding the  annotation macros. E.g to mark position 15  with circle use --post \"15 cmark\""
  }
}