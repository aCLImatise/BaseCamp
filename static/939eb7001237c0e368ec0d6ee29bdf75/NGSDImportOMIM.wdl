version 1.0

task NGSDImportOMIM {
  input {
    File geneGene
    File morbidMorbid
    Boolean testTest
    Boolean forceForce
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    NGSDImportOMIM \
      ~{if defined(geneGene) then ("-gene " +  '"' + geneGene + '"') else ""} \
      ~{if defined(morbidMorbid) then ("-morbid " +  '"' + morbidMorbid + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{true="-force" false="" forceForce} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}