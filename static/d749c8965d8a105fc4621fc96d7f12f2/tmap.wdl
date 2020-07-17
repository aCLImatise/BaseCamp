version 1.0

task Tmap {
  input {
    Boolean? graph
  }
  command <<<
    tmap \
      ~{true="-graph" false="" graph}
  >>>
  parameter_meta {
    graph: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type (ps, hpgl, hp7470, hp7580, meta, cps, tek, tekt, none, data, png, gif, svg)"
  }
}