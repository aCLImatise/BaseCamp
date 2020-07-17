version 1.0

task Gdalwarp {
  input {
    Boolean? help_general
    Boolean? formats
  }
  command <<<
    gdalwarp \
      ~{true="--help-general" false="" help_general} \
      ~{true="--formats" false="" formats}
  >>>
  parameter_meta {
    help_general: ""
    formats: ""
  }
}