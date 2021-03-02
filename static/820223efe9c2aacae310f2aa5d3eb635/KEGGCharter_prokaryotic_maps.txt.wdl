version 1.0

task KEGGCharterProkaryoticMapstxt {
  command <<<
    KEGGCharter_prokaryotic_maps_txt
  >>>
  runtime {
    docker: "quay.io/biocontainers/keggcharter:0.2.3--0"
  }
  output {
    File out_stdout = stdout()
  }
}