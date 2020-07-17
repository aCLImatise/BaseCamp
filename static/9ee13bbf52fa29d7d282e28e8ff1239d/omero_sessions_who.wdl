version 1.0

task OmeroSessionsWho {
  input {
    Boolean? show_uuid
  }
  command <<<
    omero sessions who \
      ~{true="--show-uuid" false="" show_uuid}
  >>>
  parameter_meta {
    show_uuid: "Show uuids for sessions"
  }
}