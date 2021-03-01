version 1.0

task Iuvisualizequaldicts {
  input {
    File? prefix__prefixprefix
    String? title
    Boolean? split_tiles
    String? prefix
  }
  command <<<
    iu_visualize_qual_dicts \
      ~{prefix} \
      ~{if defined(prefix__prefixprefix) then ("-p " +  '"' + prefix__prefixprefix + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (split_tiles) then "--split-tiles" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix__prefixprefix: "PREFIX, --prefix FILE PREFIX\\nPrefix for the output file(s)"
    title: "Title to appear at the top of the figure"
    split_tiles: "When set, quality curves will be shown separately for\\neach tile\\n"
    prefix: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix__prefixprefix = "${in_prefix__prefixprefix}"
  }
}