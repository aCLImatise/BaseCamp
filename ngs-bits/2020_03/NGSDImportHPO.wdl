version 1.0

task NGSDImportHPO {
  input {
    File oboObo
    File anAnNo
    File omimOmim
    File clinClinVar
    Boolean testTest
    Boolean forceForce
    Boolean debugDebug
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    NGSDImportHPO \
      ~{if defined(oboObo) then ("-obo " +  '"' + oboObo + '"') else ""} \
      ~{if defined(anAnNo) then ("-anno " +  '"' + anAnNo + '"') else ""} \
      ~{if defined(omimOmim) then ("-omim " +  '"' + omimOmim + '"') else ""} \
      ~{if defined(clinClinVar) then ("-clinvar " +  '"' + clinClinVar + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{true="-force" false="" forceForce} \
      ~{true="-debug" false="" debugDebug} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}