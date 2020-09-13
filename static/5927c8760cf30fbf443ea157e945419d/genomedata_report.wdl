version 1.0

task Genomedatareport {
  input {
    String gd_archive
  }
  command <<<
    genomedata_report \
      ~{gd_archive}
  >>>
  parameter_meta {
    gd_archive: "genomedata archive"
  }
  output {
    File out_stdout = stdout()
  }
}