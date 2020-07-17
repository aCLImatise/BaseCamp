version 1.0

task OmeroConfigAppend {
  input {
    Boolean? report
    Boolean? set
    String key
    String value
  }
  command <<<
    omero config append \
      ~{key} \
      ~{value} \
      ~{true="--report" false="" report} \
      ~{true="--set" false="" set}
  >>>
  parameter_meta {
    report: "Report if changes are made"
    set: "Append only if not already in the list"
    key: "Name of the key in the current profile"
    value: "Value to be appended"
  }
}