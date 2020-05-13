version 1.0

task OmeroConfigAppend {
  input {
    Boolean reportReport
    Boolean setSet
    String? keyKey
    String? valueValue
  }
  command <<<
    omero config append \
      ~{keyKey} \
      ~{true="--report" false="" reportReport} \
      ~{true="--set" false="" setSet} \
      ~{valueValue}
  >>>
}