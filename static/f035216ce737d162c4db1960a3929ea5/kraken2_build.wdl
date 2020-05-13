version 1.0

task Kraken2Build {
  input {
    Boolean downloadDownloadTaxonomy
    String downloadDownloadLibrary
    String specialSpecial
    File addAddToLibrary
    Boolean buildBuild
    Boolean cleanClean
    Boolean standardStandard
    String dbDb
    Boolean threadsThreads
    String kmKmErLen
    String minimizerMinimizerLen
    String minimizerMinimizerSpaces
    Boolean proteinProtein
    Boolean noNoMasking
    String maxMaxDbSize
    Boolean useUseFtp
    Boolean skipSkipMaps
    String? taskTask
    String? optionOption
  }
  command <<<
    kraken2-build \
      ~{taskTask} \
      ~{true="--download-taxonomy" false="" downloadDownloadTaxonomy} \
      ~{if defined(downloadDownloadLibrary) then ("--download-library " +  '"' + downloadDownloadLibrary + '"') else ""} \
      ~{if defined(specialSpecial) then ("--special " +  '"' + specialSpecial + '"') else ""} \
      ~{if defined(addAddToLibrary) then ("--add-to-library " +  '"' + addAddToLibrary + '"') else ""} \
      ~{true="--build" false="" buildBuild} \
      ~{true="--clean" false="" cleanClean} \
      ~{true="--standard" false="" standardStandard} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{true="--threads" false="" threadsThreads} \
      ~{if defined(kmKmErLen) then ("--kmer-len " +  '"' + kmKmErLen + '"') else ""} \
      ~{if defined(minimizerMinimizerLen) then ("--minimizer-len " +  '"' + minimizerMinimizerLen + '"') else ""} \
      ~{if defined(minimizerMinimizerSpaces) then ("--minimizer-spaces " +  '"' + minimizerMinimizerSpaces + '"') else ""} \
      ~{true="--protein" false="" proteinProtein} \
      ~{true="--no-masking" false="" noNoMasking} \
      ~{if defined(maxMaxDbSize) then ("--max-db-size " +  '"' + maxMaxDbSize + '"') else ""} \
      ~{true="--use-ftp" false="" useUseFtp} \
      ~{true="--skip-maps" false="" skipSkipMaps} \
      ~{optionOption}
  >>>
}