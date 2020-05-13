version 1.0

task FindDuplicates {
  input {
    String nucNucMeRpath
    String referenceReference
  }
  command <<<
    find_duplicates \
      ~{if defined(nucNucMeRpath) then ("--nucmerpath " +  '"' + nucNucMeRpath + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""}
  >>>
}