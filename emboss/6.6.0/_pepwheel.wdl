version 1.0

task Pepwheel {
  input {
    Boolean? graph
    Boolean? steps
    Boolean? turns
    Boolean? amphipathic
  }
  command <<<
    _pepwheel \
      ~{if (graph) then "-graph" else ""} \
      ~{if (steps) then "-steps" else ""} \
      ~{if (turns) then "-turns" else ""} \
      ~{if (amphipathic) then "-amphipathic" else ""}
  >>>
  parameter_meta {
    graph: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    steps: "integer    [18] The number of residues plotted per turn\\nis this value divided by the 'turns' value.\\n(Integer from 2 to 100)"
    turns: "integer    [5] The number of residues plotted per turn\\nis the 'steps' value divided by this value.\\n(Integer from 1 to 100)"
    amphipathic: "toggle     If this is true then the residues ACFGILMVWY\\nare marked as squares and all other\\nresidues are unmarked. This overrides any\\nother markup that you may have specified\\nusing the qualifiers '-squares', '-diamonds'\\nand '-octags'."
  }
  output {
    File out_stdout = stdout()
  }
}