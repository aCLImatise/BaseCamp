version 1.0

task ExtractMarkers.py {
  input {
    String databaseDatabase
    String cladeClade
    String outputOutputDir
  }
  command <<<
    extract_markers.py \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(cladeClade) then ("--clade " +  '"' + cladeClade + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}