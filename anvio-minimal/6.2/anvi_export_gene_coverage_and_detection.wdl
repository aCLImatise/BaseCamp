version 1.0

task AnviExportGeneCoverageAndDetection {
  input {
    String profileProfileDb
    String contigsContigsDb
    File outputOutputFilePrefix
  }
  command <<<
    anvi-export-gene-coverage-and-detection \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(outputOutputFilePrefix) then ("--output-file-prefix " +  '"' + outputOutputFilePrefix + '"') else ""}
  >>>
}