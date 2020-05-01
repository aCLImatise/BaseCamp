version 1.0

task AnviSetupNcbiCogs {
  input {
    String cogCogDataDir
    Boolean resetReset
    Boolean justJustDoIt
    String numNumThreads
  }
  command <<<
    anvi-setup-ncbi-cogs \
      ~{if defined(cogCogDataDir) then ("--cog-data-dir " +  '"' + cogCogDataDir + '"') else ""} \
      ~{true="--reset" false="" resetReset} \
      ~{true="--just-do-it" false="" justJustDoIt} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""}
  >>>
}