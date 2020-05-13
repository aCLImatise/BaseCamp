version 1.0

task Pygmes {
  input {
    String inputInput
    String outputOutput
    String dbDb
    Boolean noNoClean
    String nNCores
    Boolean metaMeta
    Boolean quietQuiet
    Boolean debugDebug
  }
  command <<<
    pygmes \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{true="--noclean" false="" noNoClean} \
      ~{if defined(nNCores) then ("--ncores " +  '"' + nNCores + '"') else ""} \
      ~{true="--meta" false="" metaMeta} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--debug" false="" debugDebug}
  >>>
}