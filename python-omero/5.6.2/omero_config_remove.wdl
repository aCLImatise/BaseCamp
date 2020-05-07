version 1.0

task OmeroConfigRemove {
  input {
    Boolean reportReport
    String? keyKey
    String? valueValue
  }
  command <<<
    omero config remove \
      ~{keyKey} \
      ~{true="--report" false="" reportReport} \
      ~{valueValue}
  >>>
}