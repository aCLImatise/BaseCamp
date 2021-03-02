version 1.0

task ConfigData {
  input {
    Boolean? config
    Boolean? eval
    Boolean? feature
    String? module
    String? set_config
    String? set_feature
  }
  command <<<
    config_data \
      ~{if (config) then "--config" else ""} \
      ~{if (eval) then "--eval" else ""} \
      ~{if (feature) then "--feature" else ""} \
      ~{if defined(module) then ("--module " +  '"' + module + '"') else ""} \
      ~{if defined(set_config) then ("--set_config " +  '"' + set_config + '"') else ""} \
      ~{if defined(set_feature) then ("--set_feature " +  '"' + set_feature + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "Print the value of a config option"
    eval: "eval() config values before setting"
    feature: "Print the value of a feature or all features"
    module: "The name of the module to configure (required)"
    set_config: "=<value>   Set a config option to the given value"
    set_feature: "=<value>  Set a feature to 'true' or 'false'"
  }
  output {
    File out_stdout = stdout()
  }
}