version 1.0

task RapClust {
  input {
    File? config
  }
  command <<<
    RapClust \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    config: "Config file describing the experimental setup  [required]"
  }
  output {
    File out_stdout = stdout()
  }
}