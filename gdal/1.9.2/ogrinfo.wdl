version 1.0

task Ogrinfo {
  input {
    Boolean? help_general
    Boolean? ro
    Boolean? q
    String? where
  }
  command <<<
    ogrinfo \
      ~{true="--help-general" false="" help_general} \
      ~{true="-ro" false="" ro} \
      ~{true="-q" false="" q} \
      ~{if defined(where) then ("-where " +  '"' + where + '"') else ""}
  >>>
  parameter_meta {
    help_general: ""
    ro: ""
    q: ""
    where: ""
  }
}