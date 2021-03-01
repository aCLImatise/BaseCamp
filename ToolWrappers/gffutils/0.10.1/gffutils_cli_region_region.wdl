version 1.0

task GffutilscliRegionRegion {
  input {
    String gff_utils_cli
    String region
    String db
  }
  command <<<
    gffutils_cli region region \
      ~{gff_utils_cli} \
      ~{region} \
      ~{db}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff_utils_cli: ""
    region: ""
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}