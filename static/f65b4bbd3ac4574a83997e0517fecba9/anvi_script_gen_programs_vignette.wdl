version 1.0

task AnviScriptGenProgramsVignette {
  input {
    File outputOutputFile
    String programProgramNamesToFocus
  }
  command <<<
    anvi-script-gen-programs-vignette \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(programProgramNamesToFocus) then ("--program-names-to-focus " +  '"' + programProgramNamesToFocus + '"') else ""}
  >>>
}