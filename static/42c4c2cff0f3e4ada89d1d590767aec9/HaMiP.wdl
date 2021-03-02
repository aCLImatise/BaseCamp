version 1.0

task HaMiP {
  input {
    File? config
    Array[String] define_variablevalue_suppress
    Boolean? v
  }
  command <<<
    HaMiP \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(define_variablevalue_suppress) then ("-D " +  '"' + define_variablevalue_suppress + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hamip:0.0.3.2--py_0"
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