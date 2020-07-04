version 1.0

task GenomedataCloseData {
  input {
    Boolean? verbose
    String gd_archive
  }
  command <<<
    genomedata-close-data \
      ~{gd_archive} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "Print status updates and diagnostic messages"
    gd_archive: "genomedata archive"
  }
}