version 1.0

task Cmsip {
  input {
    String? config
    Array[String] define_variablevalue_suppress
    Boolean? v
  }
  command <<<
    cmsip \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(define_variablevalue_suppress) then ("-D " +  '"' + define_variablevalue_suppress + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    config: "Configuration file in YAML format."
    define_variablevalue_suppress: "Define variable=value to suppress configuration file. e.g. \"-D dhmrinfo.verbose=False\""
    v: ""
  }
}