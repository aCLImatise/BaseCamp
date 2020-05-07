version 1.0

task PhyluceAssemblyCopyTrinitySymlinks {
  input {
    String assemblyAssemblySymlinks
    String confConf
    String outputOutput
  }
  command <<<
    phyluce_assembly_copy_trinity_symlinks \
      ~{if defined(assemblyAssemblySymlinks) then ("--assembly-symlinks " +  '"' + assemblyAssemblySymlinks + '"') else ""} \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}