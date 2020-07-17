version 1.0

task GenomedataEraseData {
  input {
    Array[String] track_name
    Boolean? verbose
    String gd_archive
  }
  command <<<
    genomedata-erase-data \
      ~{gd_archive} \
      ~{if defined(track_name) then ("--trackname " +  '"' + track_name + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    track_name: "tracknames to erase"
    verbose: "Print status updates and diagnostic messages"
    gd_archive: "genomedata archive"
  }
}