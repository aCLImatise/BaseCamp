version 1.0

task OmeroConfigRemove {
  input {
    Boolean? report
    String key
    String value
  }
  command <<<
    omero config remove \
      ~{key} \
      ~{value} \
      ~{true="--report" false="" report}
  >>>
  parameter_meta {
    report: "Report if changes are made"
    key: "Name of the key in the current profile"
    value: "Value to be removed"
  }
}