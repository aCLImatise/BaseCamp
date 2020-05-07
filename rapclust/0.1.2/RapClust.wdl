version 1.0

task RapClust {
  input {
    String configConfig
    String? optionsOptions
  }
  command <<<
    RapClust \
      ~{optionsOptions} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""}
  >>>
}