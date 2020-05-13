version 1.0

task NGSDImportORPHA {
  input {
    File termsTerms
    File genesGenes
    Boolean testTest
    Boolean forceForce
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    NGSDImportORPHA \
      ~{if defined(termsTerms) then ("-terms " +  '"' + termsTerms + '"') else ""} \
      ~{if defined(genesGenes) then ("-genes " +  '"' + genesGenes + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{true="-force" false="" forceForce} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}