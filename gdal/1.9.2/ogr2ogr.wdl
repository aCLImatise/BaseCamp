version 1.0

task Ogr2ogr {
  input {
    Boolean? help_general
    Boolean? skip_failures
    Boolean? append
    Boolean? update
  }
  command <<<
    ogr2ogr \
      ~{true="--help-general" false="" help_general} \
      ~{true="-skipfailures" false="" skip_failures} \
      ~{true="-append" false="" append} \
      ~{true="-update" false="" update}
  >>>
  parameter_meta {
    help_general: ""
    skip_failures: ""
    append: ""
    update: ""
  }
}