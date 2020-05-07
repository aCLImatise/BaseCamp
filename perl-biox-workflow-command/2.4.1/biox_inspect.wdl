version 1.0

task BioxInspect {
  input {
    Boolean jsonJson
    Boolean showShowOnlyErrors
    String? helpHelp
  }
  command <<<
    biox inspect \
      ~{helpHelp} \
      ~{true="--json" false="" jsonJson} \
      ~{true="--show_only_errors" false="" showShowOnlyErrors}
  >>>
}