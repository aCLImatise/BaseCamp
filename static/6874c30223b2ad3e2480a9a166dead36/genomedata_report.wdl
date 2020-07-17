version 1.0

task GenomedataReport {
  input {
    String gd_archive
  }
  command <<<
    genomedata-report \
      ~{gd_archive}
  >>>
  parameter_meta {
    gd_archive: "genomedata archive"
  }
}