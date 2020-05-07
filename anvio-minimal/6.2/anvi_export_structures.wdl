version 1.0

task AnviExportStructures {
  input {
    String structureStructureDb
    String outputOutputDir
    String geneGeneCallerIds
    File genesGenesOfInterest
  }
  command <<<
    anvi-export-structures \
      ~{if defined(structureStructureDb) then ("--structure-db " +  '"' + structureStructureDb + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(geneGeneCallerIds) then ("--gene-caller-ids " +  '"' + geneGeneCallerIds + '"') else ""} \
      ~{if defined(genesGenesOfInterest) then ("--genes-of-interest " +  '"' + genesGenesOfInterest + '"') else ""}
  >>>
}