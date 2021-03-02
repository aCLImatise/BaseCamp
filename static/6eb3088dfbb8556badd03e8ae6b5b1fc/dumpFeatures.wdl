version 1.0

task DumpFeatures {
  input {
    Boolean? report_contig_iids
    Boolean? report_coordinates_instread
    Boolean? report_features_gff
  }
  command <<<
    dumpFeatures \
      ~{if (report_contig_iids) then "-i" else ""} \
      ~{if (report_coordinates_instread) then "-u" else ""} \
      ~{if (report_features_gff) then "-g" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    report_contig_iids: "report contig iids instead of eids"
    report_coordinates_instread: "report ungapped coordinates instread of gapped coordinates"
    report_features_gff: "report features in .gff format"
  }
  output {
    File out_stdout = stdout()
  }
}