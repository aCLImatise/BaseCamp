version 1.0

task NebulizerListToolsGALAXY {
  input {
    String nameName
    Boolean installedInstalled
  }
  command <<<
    nebulizer list_tools GALAXY \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--installed" false="" installedInstalled}
  >>>
}