version 1.0

task Iuvisualizequaldicts {
  input {
    File? prefix__prefix
    String? title
    Boolean? split_tiles
    String? prefix
  }
  command <<<
    iu_visualize_qual_dicts \
      ~{prefix} \
      ~{if defined(prefix__prefix) then ("-p " +  '"' + prefix__prefix + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (split_tiles) then "--split-tiles" else ""}
  >>>
  parameter_meta {
    prefix__prefix: "PREFIX, --prefix FILE PREFIX\\nPrefix for the output file(s)"
    title: "Title to appear at the top of the figure"
    split_tiles: "When set, quality curves will be shown separately for\\neach tile\\n"
    prefix: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix__prefix = "${in_prefix__prefix}"
  }
}