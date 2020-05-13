version 1.0

task SanitizeMeCLI.py {
  input {
    String inputInputFolder
    String referenceReference
    String outputOutputFolder
    String threadsThreads
    Boolean nanoNanoPore
    Boolean pacPacBio
    Boolean pacPacBioCcs
    Boolean shortShortRead
  }
  command <<<
    SanitizeMe_CLI.py \
      ~{if defined(inputInputFolder) then ("--InputFolder " +  '"' + inputInputFolder + '"') else ""} \
      ~{if defined(referenceReference) then ("--Reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(outputOutputFolder) then ("--OutputFolder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--Nanopore" false="" nanoNanoPore} \
      ~{true="--PacBio" false="" pacPacBio} \
      ~{true="--PacBioCCS" false="" pacPacBioCcs} \
      ~{true="--ShortRead" false="" shortShortRead}
  >>>
}