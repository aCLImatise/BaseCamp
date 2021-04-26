version 1.0

task PlotMashHeatmapR {
  command <<<
    Plot_MashHeatmap_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/pgcgap:1.0.28--py37pl5262hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}