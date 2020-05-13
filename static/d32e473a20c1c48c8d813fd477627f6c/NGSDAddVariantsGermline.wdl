version 1.0

task NGSDAddVariantsGermline {
  input {
    String psPs
    File varVar
    Boolean varVarForce
    File cnvCnv
    Boolean cnvCnvForce
    File outOut
    Float maxMaxAf
    Boolean testTest
    Boolean debugDebug
    Boolean noNoTime
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    NGSDAddVariantsGermline \
      ~{if defined(psPs) then ("-ps " +  '"' + psPs + '"') else ""} \
      ~{if defined(varVar) then ("-var " +  '"' + varVar + '"') else ""} \
      ~{true="-var_force" false="" varVarForce} \
      ~{if defined(cnvCnv) then ("-cnv " +  '"' + cnvCnv + '"') else ""} \
      ~{true="-cnv_force" false="" cnvCnvForce} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(maxMaxAf) then ("-max_af " +  '"' + maxMaxAf + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{true="-debug" false="" debugDebug} \
      ~{true="-no_time" false="" noNoTime} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}