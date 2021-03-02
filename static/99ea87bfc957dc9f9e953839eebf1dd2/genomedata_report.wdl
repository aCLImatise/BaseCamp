version 1.0

task Genomedatareport {
  input {
    String gd_archive
  }
  command <<<
    genomedata_report \
      ~{gd_archive}
  >>>
  runtime {
    docker: "quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0"
  }
  parameter_meta {
    gd_archive: "genomedata archive"
  }
  output {
    File out_stdout = stdout()
  }
}