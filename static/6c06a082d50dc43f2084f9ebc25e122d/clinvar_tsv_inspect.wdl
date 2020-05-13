version 1.0

task ClinvarTsvInspect {
  input {
    String workWorkDir
    String? clinClinVarTsv
    String? inspectInspect
  }
  command <<<
    clinvar_tsv inspect \
      ~{clinClinVarTsv} \
      ~{if defined(workWorkDir) then ("--work-dir " +  '"' + workWorkDir + '"') else ""} \
      ~{inspectInspect}
  >>>
}