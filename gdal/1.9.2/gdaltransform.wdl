version 1.0

task Gdaltransform {
  input {
    Boolean? help_general
  }
  command <<<
    gdaltransform \
      ~{true="--help-general" false="" help_general}
  >>>
  parameter_meta {
    help_general: ""
  }
}