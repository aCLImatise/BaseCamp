version 1.0

task Ragout {
  input {
    String outdirOutdir
    String syntenySynteny
    Boolean refineRefine
    Boolean solidSolidScaffolds
    Boolean overwriteOverwrite
    Boolean repeatsRepeats
    Boolean debugDebug
    String threadsThreads
    String? recipeRecipeFile
  }
  command <<<
    ragout \
      ~{recipeRecipeFile} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(syntenySynteny) then ("--synteny " +  '"' + syntenySynteny + '"') else ""} \
      ~{true="--refine" false="" refineRefine} \
      ~{true="--solid-scaffolds" false="" solidSolidScaffolds} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{true="--repeats" false="" repeatsRepeats} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}