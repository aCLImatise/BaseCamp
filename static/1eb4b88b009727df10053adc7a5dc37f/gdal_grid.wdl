version 1.0

task GdalGrid {
  input {
    Boolean? help_general
    Boolean? formats
  }
  command <<<
    gdal_grid \
      ~{true="--help-general" false="" help_general} \
      ~{true="--formats" false="" formats}
  >>>
  parameter_meta {
    help_general: ""
    formats: ""
  }
}