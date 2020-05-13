version 1.0

task NebulizerListToolsOPTIONS {
  input {
    String nameName
    Boolean installedInstalled
  }
  command <<<
    nebulizer list_tools OPTIONS \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--installed" false="" installedInstalled}
  >>>
}