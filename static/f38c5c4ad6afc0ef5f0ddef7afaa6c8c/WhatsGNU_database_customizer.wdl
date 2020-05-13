version 1.0

task WhatsGNUDatabaseCustomizer.py {
  input {
    Boolean genbankGenbankRefseq
    Boolean proProKkA
    Boolean rastRast
    Boolean gffGffFile
    Boolean gzippedGzipped
    String listListCsv
    Boolean individualIndividualFiles
    Boolean concatenatedConcatenatedFile
    String? prefixPrefixName
    Directory? directoryDirectoryPath
  }
  command <<<
    WhatsGNU_database_customizer.py \
      ~{prefixPrefixName} \
      ~{true="--GenBank_RefSeq" false="" genbankGenbankRefseq} \
      ~{true="--prokka" false="" proProKkA} \
      ~{true="--RAST" false="" rastRast} \
      ~{true="--gff_file" false="" gffGffFile} \
      ~{true="--gzipped" false="" gzippedGzipped} \
      ~{if defined(listListCsv) then ("--list_csv " +  '"' + listListCsv + '"') else ""} \
      ~{true="--individual_files" false="" individualIndividualFiles} \
      ~{true="--concatenated_file" false="" concatenatedConcatenatedFile} \
      ~{directoryDirectoryPath}
  >>>
}