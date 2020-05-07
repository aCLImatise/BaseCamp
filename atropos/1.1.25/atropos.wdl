version 1.0

task Atropos {
  input {
    String configConfig
    String? commandCommand
  }
  command <<<
    atropos \
      ~{commandCommand} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""}
  >>>
}