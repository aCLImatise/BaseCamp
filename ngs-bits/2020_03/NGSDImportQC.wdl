version 1.0

task NGSDImportQC {
  input {
    File oboObo
    Boolean testTest
    Boolean debugDebug
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    NGSDImportQC \
      ~{if defined(oboObo) then ("-obo " +  '"' + oboObo + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{true="-debug" false="" debugDebug} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}