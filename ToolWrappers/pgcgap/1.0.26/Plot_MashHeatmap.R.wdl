version 1.0

task PlotMashHeatmapR {
  command <<<
    Plot_MashHeatmap_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/pgcgap:1.0.26--py37pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}