version 1.0

task Pepinfo {
  input {
    Boolean? graph
    Boolean? aa_properties
    Boolean? aa_hydropathy
    Boolean? h_window
  }
  command <<<
    pepinfo \
      ~{if (graph) then "-graph" else ""} \
      ~{if (aa_properties) then "-aaproperties" else ""} \
      ~{if (aa_hydropathy) then "-aahydropathy" else ""} \
      ~{if (h_window) then "-hwindow" else ""}
  >>>
  parameter_meta {
    graph: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    aa_properties: "datafile   [Eaa_properties.dat] Amino acid chemical\\nclasses data file"
    aa_hydropathy: "datafile   [Eaa_hydropathy.dat] Amino acid hydropathy\\nvalues data file"
    h_window: "integer    [9] Window size for hydropathy averaging\\n(Integer 1 or more)"
  }
  output {
    File out_stdout = stdout()
  }
}