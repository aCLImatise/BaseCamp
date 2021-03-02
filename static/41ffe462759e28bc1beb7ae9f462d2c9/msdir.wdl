version 1.0

task Msdir {
  input {
    Boolean? b
    Boolean? display_detailed_listing
    Boolean? display_sourcelevel_metadata
    String type
  }
  command <<<
    msdir \
      ~{type} \
      ~{if (b) then "-b" else ""} \
      ~{if (display_detailed_listing) then "-d" else ""} \
      ~{if (display_sourcelevel_metadata) then "-f" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    b: "[ --brief ]        : display brief listing [default]"
    display_detailed_listing: "[ --detailed ]     : display detailed listing (tabular)"
    display_sourcelevel_metadata: "[ --full ]         : display all source-level metadata"
    type: "Size      Last Modified   NameNo MS sources found.                                           "
  }
  output {
    File out_stdout = stdout()
  }
}