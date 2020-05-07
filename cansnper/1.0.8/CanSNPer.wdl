version 1.0

task CanSNPer {
  input {
    String referenceReference
    String queryQuery
    String dbDbPath
    String importImportTreeFile
    String importImportSnpFile
    String importImportSeqFile
    String strainStrainName
    String allowAllowDifferences
    Boolean tabTabSep
    Boolean drawDrawTree
    String progressiveProgressiveMauve
    Boolean listListSnps
    Boolean verboseVerbose
    Boolean saveSaveAlign
    String numNumThreads
    Boolean deleteDeleteOrganism
    Boolean initialiseInitialiseOrganism
    String tmpTmpPath
    Boolean devDev
    Boolean galaxyGalaxy
  }
  command <<<
    CanSNPer \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(dbDbPath) then ("--db_path " +  '"' + dbDbPath + '"') else ""} \
      ~{if defined(importImportTreeFile) then ("--import_tree_file " +  '"' + importImportTreeFile + '"') else ""} \
      ~{if defined(importImportSnpFile) then ("--import_snp_file " +  '"' + importImportSnpFile + '"') else ""} \
      ~{if defined(importImportSeqFile) then ("--import_seq_file " +  '"' + importImportSeqFile + '"') else ""} \
      ~{if defined(strainStrainName) then ("--strain_name " +  '"' + strainStrainName + '"') else ""} \
      ~{if defined(allowAllowDifferences) then ("--allow_differences " +  '"' + allowAllowDifferences + '"') else ""} \
      ~{true="--tab_sep" false="" tabTabSep} \
      ~{true="--draw_tree" false="" drawDrawTree} \
      ~{if defined(progressiveProgressiveMauve) then ("--progressiveMauve " +  '"' + progressiveProgressiveMauve + '"') else ""} \
      ~{true="--list_snps" false="" listListSnps} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--save_align" false="" saveSaveAlign} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="-delete_organism" false="" deleteDeleteOrganism} \
      ~{true="-initialise_organism" false="" initialiseInitialiseOrganism} \
      ~{if defined(tmpTmpPath) then ("--tmp_path " +  '"' + tmpTmpPath + '"') else ""} \
      ~{true="--dev" false="" devDev} \
      ~{true="--galaxy" false="" galaxyGalaxy}
  >>>
}