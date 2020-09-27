version 1.0

task DumpFeatures {
  input {
    Boolean? report_contig_iids
    Boolean? report_ungapped_coordinates
    Boolean? report_features_gff
  }
  command <<<
    dumpFeatures \
      ~{if (report_contig_iids) then "-i" else ""} \
      ~{if (report_ungapped_coordinates) then "-u" else ""} \
      ~{if (report_features_gff) then "-g" else ""}
  >>>
  parameter_meta {
    report_contig_iids: "report contig iids instead of eids"
    report_ungapped_coordinates: "report ungapped coordinates instread of gapped coordinates"
    report_features_gff: "report features in .gff format"
  }
  output {
    File out_stdout = stdout()
  }
}