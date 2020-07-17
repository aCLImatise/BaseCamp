version 1.0

task BamToGBrowse.pl {
  input {
    String bed_graph_to_bigwig
  }
  command <<<
    bamToGBrowse.pl \
      ~{bed_graph_to_bigwig}
  >>>
  parameter_meta {
    bed_graph_to_bigwig: "-- download from http://hgdownload.cse.ucsc.edu/admin/exe or build from source downloadable from http;//hgdownload.cse.ucsc.edu/admin/jksrc.zip"
  }
}