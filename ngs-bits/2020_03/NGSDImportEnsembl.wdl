version 1.0

task NGSDImportEnsembl {
  input {
    File inIn
    Boolean allAll
    Boolean testTest
    Boolean forceForce
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    NGSDImportEnsembl \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{true="-all" false="" allAll} \
      ~{true="-test" false="" testTest} \
      ~{true="-force" false="" forceForce} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}