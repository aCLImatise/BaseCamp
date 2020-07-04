version 1.0

task DumpFeatures {
  input {
    Boolean? report_contig_iids
    Boolean? report_ungapped_coordinates
    Boolean? report_features_gff
  }
  command <<<
    dumpFeatures \
      ~{true="-i" false="" report_contig_iids} \
      ~{true="-u" false="" report_ungapped_coordinates} \
      ~{true="-g" false="" report_features_gff}
  >>>
  parameter_meta {
    report_contig_iids: "report contig iids instead of eids"
    report_ungapped_coordinates: "report ungapped coordinates instread of gapped coordinates"
    report_features_gff: "report features in .gff format"
  }
}