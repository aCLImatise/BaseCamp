version 1.0

task Nasp {
  input {
    String? config
  }
  command <<<
    nasp \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    config: "Path to the configuration xml file."
  }
}