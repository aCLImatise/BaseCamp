version 1.0

task RapClust {
  input {
    String? config
  }
  command <<<
    RapClust \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    config: "Config file describing the experimental setup  [required]"
  }
}