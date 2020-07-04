version 1.0

task Gdalenhance {
  input {
    Boolean? help_general
  }
  command <<<
    gdalenhance \
      ~{true="--help-general" false="" help_general}
  >>>
  parameter_meta {
    help_general: ""
  }
}