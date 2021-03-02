version 1.0

task Mclblastline {
  input {
    Boolean? what_if
    Boolean? start_assemble
    Boolean? start_mcl
    Boolean? start_format
    Boolean? prepare_mcl
    File? xi
    String? xo_dat
    String? xo_ass
    String? xo_mcl
    String? x_a_mcl
    File? xe_mcl
    String? xo_fmt
    String? parser
    String? parser_tag
    Int? ass_repeat
    Boolean? ass_no_map
    Boolean? ass
    Int? mcl_te
    Float? inflation_value_mcl
    Float? initial_inflation_value
    Int? mcl_l
    Float? mcl_pi
    Float? mcl_c
    Float? mcl_scheme
    String? mcl_o
    Boolean? mcl
    String? mcl_v
    Int? fmt_lump_size
    Int? fmt_lump_count
    Boolean? fmt_not_ab
    File? fmt_tab
    Boolean? fmt
    String? xi_dat
    String mcl_pipeline
    File file_name
  }
  command <<<
    mclblastline \
      ~{mcl_pipeline} \
      ~{file_name} \
      ~{if (what_if) then "--whatif" else ""} \
      ~{if (start_assemble) then "--start-assemble" else ""} \
      ~{if (start_mcl) then "--start-mcl" else ""} \
      ~{if (start_format) then "--start-format" else ""} \
      ~{if (prepare_mcl) then "--prepare-mcl" else ""} \
      ~{if defined(xi) then ("--xi " +  '"' + xi + '"') else ""} \
      ~{if defined(xo_dat) then ("--xo-dat " +  '"' + xo_dat + '"') else ""} \
      ~{if defined(xo_ass) then ("--xo-ass " +  '"' + xo_ass + '"') else ""} \
      ~{if defined(xo_mcl) then ("--xo-mcl " +  '"' + xo_mcl + '"') else ""} \
      ~{if defined(x_a_mcl) then ("--xa-mcl " +  '"' + x_a_mcl + '"') else ""} \
      ~{if defined(xe_mcl) then ("--xe-mcl " +  '"' + xe_mcl + '"') else ""} \
      ~{if defined(xo_fmt) then ("--xo-fmt " +  '"' + xo_fmt + '"') else ""} \
      ~{if defined(parser) then ("--parser " +  '"' + parser + '"') else ""} \
      ~{if defined(parser_tag) then ("--parser-tag " +  '"' + parser_tag + '"') else ""} \
      ~{if defined(ass_repeat) then ("--ass-repeat " +  '"' + ass_repeat + '"') else ""} \
      ~{if (ass_no_map) then "--ass-nomap" else ""} \
      ~{if (ass) then "--ass" else ""} \
      ~{if defined(mcl_te) then ("--mcl-te " +  '"' + mcl_te + '"') else ""} \
      ~{if defined(inflation_value_mcl) then ("--mcl-I " +  '"' + inflation_value_mcl + '"') else ""} \
      ~{if defined(initial_inflation_value) then ("--mcl-i " +  '"' + initial_inflation_value + '"') else ""} \
      ~{if defined(mcl_l) then ("--mcl-l " +  '"' + mcl_l + '"') else ""} \
      ~{if defined(mcl_pi) then ("--mcl-pi " +  '"' + mcl_pi + '"') else ""} \
      ~{if defined(mcl_c) then ("--mcl-c " +  '"' + mcl_c + '"') else ""} \
      ~{if defined(mcl_scheme) then ("--mcl-scheme " +  '"' + mcl_scheme + '"') else ""} \
      ~{if defined(mcl_o) then ("--mcl-o " +  '"' + mcl_o + '"') else ""} \
      ~{if (mcl) then "--mcl" else ""} \
      ~{if defined(mcl_v) then ("--mcl-v " +  '"' + mcl_v + '"') else ""} \
      ~{if defined(fmt_lump_size) then ("--fmt-lump-size " +  '"' + fmt_lump_size + '"') else ""} \
      ~{if defined(fmt_lump_count) then ("--fmt-lump-count " +  '"' + fmt_lump_count + '"') else ""} \
      ~{if (fmt_not_ab) then "--fmt-notab" else ""} \
      ~{if defined(fmt_tab) then ("--fmt-tab " +  '"' + fmt_tab + '"') else ""} \
      ~{if (fmt) then "--fmt" else ""} \
      ~{if defined(xi_dat) then ("--xi-dat " +  '"' + xi_dat + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    what_if: "shows only what would be done."
    start_assemble: "skip the parse step, assume needed files exist already."
    start_mcl: "start running mcl immediately, as above."
    start_format: "only (re)do the formatting stage, as above."
    prepare_mcl: "create the input file for mcl, then quit."
    xi: "strip <suf> from file-name for use as base stem."
    xo_dat: "attach <suf> to parse result."
    xo_ass: "attach <suf> to mcxassemble result."
    xo_mcl: "use <suf> as mcl result attachment."
    x_a_mcl: "append to mcl suffix."
    xe_mcl: "append to mcl file name."
    xo_fmt: "attach <suf> to clmformat result.\\nmnemonics: eXtension In, Out, Append, Extra."
    parser: "name of parse script"
    parser_tag: "tag of options to pass to parse script."
    ass_repeat: "str in <add|max|mul|left|right>"
    ass_no_map: "map file does not exist or should be ignored."
    ass: "<-opt[=val]> add '-opt [val]' to mcxassemble command line."
    mcl_te: "number of expansion threads."
    inflation_value_mcl: "inflation value, MAIN mcl handle."
    initial_inflation_value: "initial inflation value."
    mcl_l: "initial loop length."
    mcl_pi: "pre-inflation value."
    mcl_c: "center value."
    mcl_scheme: "i in 1..5, resource allocation level."
    mcl_o: "if you *need* to use this, I must be improved."
    mcl: "<-opt[=val]> add '-opt [val]' to mcl command line, e.g."
    mcl_v: "adds '-v all' to the mcl command line."
    fmt_lump_size: "collect clusters of size lq <num> in a single file."
    fmt_lump_count: "make batches containing approximately <num> nodes."
    fmt_not_ab: "tab file does not exist or should be ignored."
    fmt_tab: "use tab file fname."
    fmt: "<-opt[=val]>       add '-opt [val]' to clmformat command line."
    xi_dat: "should not be used, as it encapsulated by the mclpipeline --xi"
    mcl_pipeline: ""
    file_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}