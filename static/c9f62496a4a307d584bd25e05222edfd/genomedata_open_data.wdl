version 1.0

task GenomedataOpenData {
  input {
    Array[String] track_names
    Boolean? verbose
    Boolean? v
    String gd_archive
  }
  command <<<
    genomedata-open-data \
      ~{gd_archive} \
      ~{if defined(track_names) then ("--tracknames " +  '"' + track_names + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    track_names: "tracknames to open"
    verbose: "Print status updates and diagnostic messages"
    v: ""
    gd_archive: "genomedata archive"
  }
}