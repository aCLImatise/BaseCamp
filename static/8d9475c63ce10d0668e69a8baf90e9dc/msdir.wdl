version 1.0

task Msdir {
  input {
    Boolean? b
    Boolean? display_detailed_listing
    Boolean? display_sourcelevel_metadata
    File? file
    String? or
    Directory? directory
    File? paths
  }
  command <<<
    msdir \
      ~{file} \
      ~{or} \
      ~{directory} \
      ~{paths} \
      ~{true="-b" false="" b} \
      ~{true="-d" false="" display_detailed_listing} \
      ~{true="-f" false="" display_sourcelevel_metadata}
  >>>
  parameter_meta {
    b: "[ --brief ]        : display brief listing [default]"
    display_detailed_listing: "[ --detailed ]     : display detailed listing (tabular)"
    display_sourcelevel_metadata: "[ --full ]         : display all source-level metadata"
    file: ""
    or: ""
    directory: ""
    paths: ""
  }
}