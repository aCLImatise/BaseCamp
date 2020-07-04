version 1.0

task Mclblastline {
  input {
    Boolean? what_if
    Boolean? start_assemble
    Boolean? start_mcl
    Boolean? start_format
    Boolean? prepare_mcl
    String? parser
    String? parser_tag
    String? ass_repeat
    Boolean? ass_no_map
    Boolean? ass
    String? mcl_te
    Float? inflation_value_main
    Float? initial_inflation_value
    Int? mcl_l
    Float? mcl_pi
    Float? mcl_c
    String? mcl_scheme
    String? mcl_o
    Boolean? mcl
    String? fmt_lump_size
    String? fmt_lump_count
    Boolean? fmt_not_ab
    String? fmt_tab
    Boolean? fmt
    String mcl_pipeline
    File file_name
  }
  command <<<
    mclblastline \
      ~{mcl_pipeline} \
      ~{file_name} \
      ~{true="--whatif" false="" what_if} \
      ~{true="--start-assemble" false="" start_assemble} \
      ~{true="--start-mcl" false="" start_mcl} \
      ~{true="--start-format" false="" start_format} \
      ~{true="--prepare-mcl" false="" prepare_mcl} \
      ~{if defined(parser) then ("--parser " +  '"' + parser + '"') else ""} \
      ~{if defined(parser_tag) then ("--parser-tag " +  '"' + parser_tag + '"') else ""} \
      ~{if defined(ass_repeat) then ("--ass-repeat " +  '"' + ass_repeat + '"') else ""} \
      ~{true="--ass-nomap" false="" ass_no_map} \
      ~{true="--ass" false="" ass} \
      ~{if defined(mcl_te) then ("--mcl-te " +  '"' + mcl_te + '"') else ""} \
      ~{if defined(inflation_value_main) then ("--mcl-I " +  '"' + inflation_value_main + '"') else ""} \
      ~{if defined(initial_inflation_value) then ("--mcl-i " +  '"' + initial_inflation_value + '"') else ""} \
      ~{if defined(mcl_l) then ("--mcl-l " +  '"' + mcl_l + '"') else ""} \
      ~{if defined(mcl_pi) then ("--mcl-pi " +  '"' + mcl_pi + '"') else ""} \
      ~{if defined(mcl_c) then ("--mcl-c " +  '"' + mcl_c + '"') else ""} \
      ~{if defined(mcl_scheme) then ("--mcl-scheme " +  '"' + mcl_scheme + '"') else ""} \
      ~{if defined(mcl_o) then ("--mcl-o " +  '"' + mcl_o + '"') else ""} \
      ~{true="--mcl" false="" mcl} \
      ~{if defined(fmt_lump_size) then ("--fmt-lump-size " +  '"' + fmt_lump_size + '"') else ""} \
      ~{if defined(fmt_lump_count) then ("--fmt-lump-count " +  '"' + fmt_lump_count + '"') else ""} \
      ~{true="--fmt-notab" false="" fmt_not_ab} \
      ~{if defined(fmt_tab) then ("--fmt-tab " +  '"' + fmt_tab + '"') else ""} \
      ~{true="--fmt" false="" fmt}
  >>>
  parameter_meta {
    what_if: "shows only what would be done."
    start_assemble: "skip the parse step, assume needed files exist already."
    start_mcl: "start running mcl immediately, as above."
    start_format: "only (re)do the formatting stage, as above."
    prepare_mcl: "create the input file for mcl, then quit."
    parser: "name of parse script"
    parser_tag: "tag of options to pass to parse script."
    ass_repeat: "str in <add|max|mul|left|right>"
    ass_no_map: "map file does not exist or should be ignored."
    ass: "<-opt[=val]> add '-opt [val]' to mcxassemble command line."
    mcl_te: "number of expansion threads."
    inflation_value_main: "inflation value, MAIN mcl handle."
    initial_inflation_value: "initial inflation value."
    mcl_l: "initial loop length."
    mcl_pi: "pre-inflation value."
    mcl_c: "center value."
    mcl_scheme: "i in 1..5, resource allocation level."
    mcl_o: "if you *need* to use this, I must be improved."
    mcl: "<-opt[=val]> add '-opt [val]' to mcl command line, e.g. --mcl-v=all adds '-v all' to the mcl command line."
    fmt_lump_size: "collect clusters of size lq <num> in a single file."
    fmt_lump_count: "make batches containing approximately <num> nodes."
    fmt_not_ab: "tab file does not exist or should be ignored."
    fmt_tab: "use tab file fname."
    fmt: "<-opt[=val]>       add '-opt [val]' to clmformat command line."
    mcl_pipeline: ""
    file_name: ""
  }
}