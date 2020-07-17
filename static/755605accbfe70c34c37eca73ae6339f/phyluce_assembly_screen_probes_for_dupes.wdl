version 1.0

task PhyluceAssemblyScreenProbesForDupes {
  input {
    String? last_z
  }
  command <<<
    phyluce_assembly_screen_probes_for_dupes \
      ~{if defined(last_z) then ("--lastz " +  '"' + last_z + '"') else ""}
  >>>
  parameter_meta {
    last_z: "The lastz input"
  }
}