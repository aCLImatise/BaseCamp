version 1.0

task PhyluceAssemblyScreenProbesForDupes {
  input {
    String lastLastZ
  }
  command <<<
    phyluce_assembly_screen_probes_for_dupes \
      ~{if defined(lastLastZ) then ("--lastz " +  '"' + lastLastZ + '"') else ""}
  >>>
}