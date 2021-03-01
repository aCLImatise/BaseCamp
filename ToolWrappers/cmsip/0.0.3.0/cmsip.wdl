version 1.0

task Cmsip {
  input {
    File? config
    Array[String] define_variablevalue_suppress
    Boolean? v
  }
  command <<<
    cmsip \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(define_variablevalue_suppress) then ("-D " +  '"' + define_variablevalue_suppress + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "Configuration file in YAML format."
    define_variablevalue_suppress: "Define variable=value to suppress configuration file.\\ne.g. \\\"-D dhmrinfo.verbose=False\\\""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}