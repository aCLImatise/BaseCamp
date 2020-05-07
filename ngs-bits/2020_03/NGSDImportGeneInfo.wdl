version 1.0

task NGSDImportGeneInfo {
  input {
    File constraintConstraint
    Boolean testTest
    Boolean forceForce
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    NGSDImportGeneInfo \
      ~{if defined(constraintConstraint) then ("-constraint " +  '"' + constraintConstraint + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{true="-force" false="" forceForce} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}