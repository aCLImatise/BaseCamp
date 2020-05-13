version 1.0

task MafBuildIndex.py {
  input {
    String speciesSpecies
    String? mafMafFile
    String? indexIndexFile
  }
  command <<<
    maf_build_index.py \
      ~{mafMafFile} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{indexIndexFile}
  >>>
}