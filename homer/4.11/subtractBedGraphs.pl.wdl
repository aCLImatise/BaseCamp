version 1.0

task SubtractBedGraphspl {
  input {
    String? cov
    Boolean? cov_thresh
    String? name
    Boolean? center
    Int bed_graph_one
    Int bed_graph_two
  }
  command <<<
    subtractBedGraphs_pl \
      ~{bed_graph_one} \
      ~{bed_graph_two} \
      ~{if defined(cov) then ("-cov " +  '"' + cov + '"') else ""} \
      ~{if (cov_thresh) then "-covThresh" else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if (center) then "-center" else ""}
  >>>
  parameter_meta {
    cov: "(to remove regions with low coverage)"
    cov_thresh: "<#> (fraction of average coverage below which to skip region, default: 0.15)"
    name: "(name for track, default: autogenerated)"
    center: "(Center output on the mean of the bedGraph - remove global drift)"
    bed_graph_one: ""
    bed_graph_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}