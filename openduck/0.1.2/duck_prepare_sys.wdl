version 1.0

task DuckPrepareSys {
  input {
    String proteinProtein
    String ligandLigand
    String chunkChunk
    Int interactionInteraction
    String seedSeed
    String gpuGpuId
    String forceForceConstantEq
  }
  command <<<
    duck_prepare_sys \
      ~{if defined(proteinProtein) then ("--protein " +  '"' + proteinProtein + '"') else ""} \
      ~{if defined(ligandLigand) then ("--ligand " +  '"' + ligandLigand + '"') else ""} \
      ~{if defined(chunkChunk) then ("--chunk " +  '"' + chunkChunk + '"') else ""} \
      ~{if defined(interactionInteraction) then ("--interaction " +  '"' + interactionInteraction + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(gpuGpuId) then ("--gpu-id " +  '"' + gpuGpuId + '"') else ""} \
      ~{if defined(forceForceConstantEq) then ("--force-constant-eq " +  '"' + forceForceConstantEq + '"') else ""}
  >>>
}