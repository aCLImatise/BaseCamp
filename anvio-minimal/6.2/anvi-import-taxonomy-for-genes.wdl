version 1.0

task AnviImportTaxonomyForGenes {
  input {
    String contigsContigsDb
    String parserParser
    File iI
    Boolean justJustDoIt
  }
  command <<<
    anvi-import-taxonomy-for-genes \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(parserParser) then ("--parser " +  '"' + parserParser + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}