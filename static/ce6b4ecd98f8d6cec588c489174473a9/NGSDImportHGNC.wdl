version 1.0

task NGSDImportHGNC {
  input {
    File inIn
    Boolean testTest
    Boolean forceForce
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    NGSDImportHGNC \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{true="-force" false="" forceForce} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}