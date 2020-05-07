version 1.0

task AnviScriptGenProgramsNetwork {
  input {
    File outputOutputFile
    String programProgramNamesToFocus
  }
  command <<<
    anvi-script-gen-programs-network \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(programProgramNamesToFocus) then ("--program-names-to-focus " +  '"' + programProgramNamesToFocus + '"') else ""}
  >>>
}