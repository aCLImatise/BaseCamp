version 1.0

task BedCoverage {
  input {
    String restrictRestrict
    String? databaseDatabase
    String? bedBedFile
  }
  command <<<
    bedCoverage \
      ~{databaseDatabase} \
      ~{if defined(restrictRestrict) then ("-restrict " +  '"' + restrictRestrict + '"') else ""} \
      ~{bedBedFile}
  >>>
}