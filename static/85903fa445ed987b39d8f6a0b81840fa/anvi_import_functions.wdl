version 1.0

task AnviImportFunctions {
  input {
    String contigsContigsDb
    String parserParser
    File iI
    Boolean dropDropPreviousAnnotations
  }
  command <<<
    anvi-import-functions \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(parserParser) then ("--parser " +  '"' + parserParser + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="--drop-previous-annotations" false="" dropDropPreviousAnnotations}
  >>>
}