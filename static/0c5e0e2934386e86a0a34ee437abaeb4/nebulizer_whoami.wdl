version 1.0

task NebulizerWhoami {
  input {
    String? optionsOptions
    String? galaxyGalaxy
  }
  command <<<
    nebulizer whoami \
      ~{optionsOptions} \
      ~{galaxyGalaxy}
  >>>
}