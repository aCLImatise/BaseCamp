version 1.0

task AnviExportMiscData {
  input {
    String panPanOrProfileDb
    String targetTargetDataTable
    String targetTargetDataGroup
    File outputOutputFile
  }
  command <<<
    anvi-export-misc-data \
      ~{if defined(panPanOrProfileDb) then ("--pan-or-profile-db " +  '"' + panPanOrProfileDb + '"') else ""} \
      ~{if defined(targetTargetDataTable) then ("--target-data-table " +  '"' + targetTargetDataTable + '"') else ""} \
      ~{if defined(targetTargetDataGroup) then ("--target-data-group " +  '"' + targetTargetDataGroup + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}