version 1.0

task Gdallocationinfo {
  input {
    Boolean? help_general
    Boolean? xml
    Boolean? l_if_only
    Boolean? val_only
  }
  command <<<
    gdallocationinfo \
      ~{true="--help-general" false="" help_general} \
      ~{true="-xml" false="" xml} \
      ~{true="-lifonly" false="" l_if_only} \
      ~{true="-valonly" false="" val_only}
  >>>
  parameter_meta {
    help_general: ""
    xml: ""
    l_if_only: ""
    val_only: ""
  }
}