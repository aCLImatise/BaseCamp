version 1.0

task Pepnet {
  input {
    Boolean? graph
    Boolean? amphipathic
  }
  command <<<
    pepnet \
      ~{if (graph) then "-graph" else ""} \
      ~{if (amphipathic) then "-amphipathic" else ""}
  >>>
  parameter_meta {
    graph: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    amphipathic: "toggle     If this is true then the residues ACFGILMVWY\\nare marked as squares and all other\\nresidues are unmarked. This overrides any\\nother markup that you may have specified\\nusing the qualifiers '-squares', '-diamonds'\\nand '-octags'."
  }
  output {
    File out_stdout = stdout()
  }
}