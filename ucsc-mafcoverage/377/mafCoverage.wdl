version 1.0

task MafCoverage {
  input {
    String restrictRestrict
    String countCount
    String? databaseDatabase
    String? mafMafFile
  }
  command <<<
    mafCoverage \
      ~{databaseDatabase} \
      ~{if defined(restrictRestrict) then ("-restrict " +  '"' + restrictRestrict + '"') else ""} \
      ~{if defined(countCount) then ("-count " +  '"' + countCount + '"') else ""} \
      ~{mafMafFile}
  >>>
}