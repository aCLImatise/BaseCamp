version 1.0

task AnviImportMiscData {
  input {
    String panPanOrProfileDb
    String targetTargetDataTable
    String targetTargetDataGroup
    Boolean transposeTranspose
    Boolean justJustDoIt
  }
  command <<<
    anvi-import-misc-data \
      ~{if defined(panPanOrProfileDb) then ("--pan-or-profile-db " +  '"' + panPanOrProfileDb + '"') else ""} \
      ~{if defined(targetTargetDataTable) then ("--target-data-table " +  '"' + targetTargetDataTable + '"') else ""} \
      ~{if defined(targetTargetDataGroup) then ("--target-data-group " +  '"' + targetTargetDataGroup + '"') else ""} \
      ~{true="--transpose" false="" transposeTranspose} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}