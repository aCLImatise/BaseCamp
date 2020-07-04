version 1.0

task Blat2gbrowse.pl {
  input {
    Boolean? old_format
    File? est_names
    String? source
  }
  command <<<
    blat2gbrowse.pl \
      ~{true="--oldformat" false="" old_format} \
      ~{if defined(est_names) then ("--estnames " +  '"' + est_names + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""}
  >>>
  parameter_meta {
    old_format: "output format for old GBrowse (before 2.0)"
    est_names: "output file with the names of the ESTs"
    source: "identifyier in the source column"
  }
}