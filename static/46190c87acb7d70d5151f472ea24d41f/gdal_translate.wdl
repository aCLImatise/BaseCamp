version 1.0

task GdalTranslate {
  input {
    Boolean? help_general
  }
  command <<<
    gdal_translate \
      ~{true="--help-general" false="" help_general}
  >>>
  parameter_meta {
    help_general: ""
  }
}