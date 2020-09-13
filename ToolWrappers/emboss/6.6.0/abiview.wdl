version 1.0

task Abiview {
  input {
    Boolean? graph
    Boolean? start_base
    Boolean? end_base
    Boolean? y_ticks
    Boolean? window
    Boolean? string_base_graphs
    Boolean? separate
    String general_qualifiers
  }
  command <<<
    abiview \
      ~{general_qualifiers} \
      ~{if (graph) then "-graph" else ""} \
      ~{if (start_base) then "-startbase" else ""} \
      ~{if (end_base) then "-endbase" else ""} \
      ~{if (y_ticks) then "-yticks" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (string_base_graphs) then "-bases" else ""} \
      ~{if (separate) then "-separate" else ""}
  >>>
  parameter_meta {
    graph: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    start_base: "integer    [0] First base to report or display (Integer\\n0 or more)"
    end_base: "integer    [0] Last sequence base to report or display.\\nIf the default is set to zero then the\\nvalue of this is taken as the maximum number\\nof bases. (Any integer value)"
    y_ticks: "boolean    [N] Display y-axis ticks"
    window: "integer    [40] Sequence display window size (Any\\ninteger value)"
    string_base_graphs: "string     [GATC] Base graphs to be displayed (Any\\nstring, matching regular expression\\n/[GATC]+/)"
    separate: "boolean    [N] Separate the trace graphs for the 4"
    general_qualifiers: "General qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}