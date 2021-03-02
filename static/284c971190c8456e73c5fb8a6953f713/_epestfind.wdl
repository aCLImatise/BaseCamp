version 1.0

task Epestfind {
  input {
    Boolean? window
    Boolean? order
    Boolean? graph
    Boolean? mw_data
    Boolean? threshold
    Boolean? mono
    Boolean? invalid
  }
  command <<<
    _epestfind \
      ~{if (window) then "-window" else ""} \
      ~{if (order) then "-order" else ""} \
      ~{if (graph) then "-graph" else ""} \
      ~{if (mw_data) then "-mwdata" else ""} \
      ~{if (threshold) then "-threshold" else ""} \
      ~{if (mono) then "-mono" else ""} \
      ~{if (invalid) then "-invalid" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    window: "integer    [10] Minimal distance between positively\\ncharged amino acids. (Integer 2 or more)"
    order: "selection  [score] Name of the output file which holds\\nthe results of the analysis. Results may be\\nsorted by length, position and score."
    graph: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    mw_data: "datafile   [Emolwt.dat] Molecular weights data file"
    threshold: "float      [+5.0] Threshold value to discriminate weak\\nfrom potential PEST motifs. Valid PEST\\nmotifs are discriminated into 'poor' and\\n'potential' motifs depending on this\\nthreshold score. By default, the default\\nvalue is set to +5.0 based on experimental\\ndata. Alterations are not recommended since\\nsignificance is a matter of biology, not\\nmathematics. (Number from -55.00 to 55.00)"
    mono: "boolean    [N] Use monoisotopic weights"
    invalid: "boolean    [N] Decide whether invalid PEST motifs\\nshould be printed."
  }
  output {
    File out_stdout = stdout()
  }
}