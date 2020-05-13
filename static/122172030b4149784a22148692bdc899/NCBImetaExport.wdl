version 1.0

task NCBImetaExport.py {
  input {
    String databaseDatabase
    String outputOutputDir
  }
  command <<<
    NCBImetaExport.py \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--outputdir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}