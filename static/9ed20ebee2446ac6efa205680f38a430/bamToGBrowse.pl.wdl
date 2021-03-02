version 1.0

task BamToGBrowsepl {
  input {
    String bed_graph_to_bigwig
  }
  command <<<
    bamToGBrowse_pl \
      ~{bed_graph_to_bigwig}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed_graph_to_bigwig: "-- download from http://hgdownload.cse.ucsc.edu/admin/exe\\nor build from source downloadable from\\nhttp;//hgdownload.cse.ucsc.edu/admin/jksrc.zip"
  }
  output {
    File out_stdout = stdout()
  }
}