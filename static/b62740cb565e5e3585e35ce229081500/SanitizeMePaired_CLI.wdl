version 1.0

task SanitizeMePairedCLI.py {
  input {
    String inputInputFolder
    String referenceReference
    String outputOutputFolder
    String threadsThreads
  }
  command <<<
    SanitizeMePaired_CLI.py \
      ~{if defined(inputInputFolder) then ("--InputFolder " +  '"' + inputInputFolder + '"') else ""} \
      ~{if defined(referenceReference) then ("--Reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(outputOutputFolder) then ("--OutputFolder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}