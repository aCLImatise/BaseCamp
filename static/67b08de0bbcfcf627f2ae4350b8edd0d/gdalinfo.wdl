version 1.0

task Gdalinfo {
  input {
    Boolean? help_general
    Boolean? mm
    Boolean? stats
    Boolean? hist
    Boolean? no_gcp
    Boolean? no_md
  }
  command <<<
    gdalinfo \
      ~{true="--help-general" false="" help_general} \
      ~{true="-mm" false="" mm} \
      ~{true="-stats" false="" stats} \
      ~{true="-hist" false="" hist} \
      ~{true="-nogcp" false="" no_gcp} \
      ~{true="-nomd" false="" no_md}
  >>>
  parameter_meta {
    help_general: ""
    mm: ""
    stats: ""
    hist: ""
    no_gcp: ""
    no_md: ""
  }
}