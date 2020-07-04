version 1.0

task Pepinfo {
  input {
    Boolean? graph
  }
  command <<<
    pepinfo \
      ~{true="-graph" false="" graph}
  >>>
  parameter_meta {
    graph: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type (ps, hpgl, hp7470, hp7580, meta, cps, tek, tekt, none, data, png, gif, svg)"
  }
}