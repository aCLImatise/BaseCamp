version 1.0

task DuckChunk {
  input {
    String proteinProtein
    String ligandLigand
    String cutCutOff
    Boolean ignoreIgnoreBuffers
    Int interactionInteraction
  }
  command <<<
    duck_chunk \
      ~{if defined(proteinProtein) then ("--protein " +  '"' + proteinProtein + '"') else ""} \
      ~{if defined(ligandLigand) then ("--ligand " +  '"' + ligandLigand + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--ignore-buffers" false="" ignoreIgnoreBuffers} \
      ~{if defined(interactionInteraction) then ("--interaction " +  '"' + interactionInteraction + '"') else ""}
  >>>
}