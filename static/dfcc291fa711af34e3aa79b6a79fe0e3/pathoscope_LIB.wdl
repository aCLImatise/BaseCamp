version 1.0

task PathoscopeLIB {
  input {
    String genomeGenomeFile
    String taxonidTaxonidS
    String excludeExcludeTaxonidS
    Boolean nodesNodesC
    Boolean subSubTax
    Boolean onlineOnline
    String dbhostDbhost
    String dbDbPort
    String dbuserDbuser
    String dbDbPasswd
    String dbDb
    String outdirOutdir
    String outOutPrefix
  }
  command <<<
    pathoscope LIB \
      ~{if defined(genomeGenomeFile) then ("-genomeFile " +  '"' + genomeGenomeFile + '"') else ""} \
      ~{if defined(taxonidTaxonidS) then ("-taxonIds " +  '"' + taxonidTaxonidS + '"') else ""} \
      ~{if defined(excludeExcludeTaxonidS) then ("-excludeTaxonIds " +  '"' + excludeExcludeTaxonidS + '"') else ""} \
      ~{true="--noDesc" false="" nodesNodesC} \
      ~{true="--subTax" false="" subSubTax} \
      ~{true="--online" false="" onlineOnline} \
      ~{if defined(dbhostDbhost) then ("-dbhost " +  '"' + dbhostDbhost + '"') else ""} \
      ~{if defined(dbDbPort) then ("-dbport " +  '"' + dbDbPort + '"') else ""} \
      ~{if defined(dbuserDbuser) then ("-dbuser " +  '"' + dbuserDbuser + '"') else ""} \
      ~{if defined(dbDbPasswd) then ("-dbpasswd " +  '"' + dbDbPasswd + '"') else ""} \
      ~{if defined(dbDb) then ("-db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(outdirOutdir) then ("-outDir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutPrefix) then ("-outPrefix " +  '"' + outOutPrefix + '"') else ""}
  >>>
}