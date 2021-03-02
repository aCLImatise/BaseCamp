version 1.0

task Fretree {
  input {
    Boolean? initial_tree
    Boolean? format
    Boolean? screen_width
    Boolean? v_screen_width
    Boolean? screen_lines
  }
  command <<<
    fretree \
      ~{if (initial_tree) then "-initialtree" else ""} \
      ~{if (format) then "-format" else ""} \
      ~{if (screen_width) then "-screenwidth" else ""} \
      ~{if (v_screen_width) then "-vscreenwidth" else ""} \
      ~{if (screen_lines) then "-screenlines" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    initial_tree: "menu       [Arbitary] Initial tree (Values: a\\n(Arbitary); u (User); s (Specify))"
    format: "menu       [p] Format to write trees (Values: p\\n(PHYLIP); n (NEXUS); x (XML))"
    screen_width: "integer    [80] Width of terminal screen in characters\\n(Any integer value)"
    v_screen_width: "integer    [80] Width of plotting area in characters\\n(Any integer value)"
    screen_lines: "integer    [24] Number of lines on screen (Any integer\\nvalue)"
  }
  output {
    File out_stdout = stdout()
  }
}