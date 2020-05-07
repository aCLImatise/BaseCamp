version 1.0

task AnviImportTaxonomyForLayers {
  input {
    String profileProfileDb
    String parserParser
    File iI
    String minMinAbundance
  }
  command <<<
    anvi-import-taxonomy-for-layers \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(parserParser) then ("--parser " +  '"' + parserParser + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(minMinAbundance) then ("--min-abundance " +  '"' + minMinAbundance + '"') else ""}
  >>>
}