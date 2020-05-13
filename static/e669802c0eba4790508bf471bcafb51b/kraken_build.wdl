version 1.0

task KrakenBuild {
  input {
    Boolean downloadDownloadTaxonomy
    String downloadDownloadLibrary
    File addAddToLibrary
    Boolean buildBuild
    Boolean rebuildRebuild
    Boolean cleanClean
    String shrinkShrink
    Boolean standardStandard
    Boolean upgradeUpgrade
    String dbDb
    Boolean threadsThreads
    String newNewDb
    String kmKmErLen
    String minimizerMinimizerLen
    String jellyfishJellyfishHashSize
    Int maxMaxDbSize
    String shrinkShrinkBlockOffset
    Boolean workWorkOnDisk
    String? taskTask
    String? optionOption
  }
  command <<<
    kraken-build \
      ~{taskTask} \
      ~{true="--download-taxonomy" false="" downloadDownloadTaxonomy} \
      ~{if defined(downloadDownloadLibrary) then ("--download-library " +  '"' + downloadDownloadLibrary + '"') else ""} \
      ~{if defined(addAddToLibrary) then ("--add-to-library " +  '"' + addAddToLibrary + '"') else ""} \
      ~{true="--build" false="" buildBuild} \
      ~{true="--rebuild" false="" rebuildRebuild} \
      ~{true="--clean" false="" cleanClean} \
      ~{if defined(shrinkShrink) then ("--shrink " +  '"' + shrinkShrink + '"') else ""} \
      ~{true="--standard" false="" standardStandard} \
      ~{true="--upgrade" false="" upgradeUpgrade} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{true="--threads" false="" threadsThreads} \
      ~{if defined(newNewDb) then ("--new-db " +  '"' + newNewDb + '"') else ""} \
      ~{if defined(kmKmErLen) then ("--kmer-len " +  '"' + kmKmErLen + '"') else ""} \
      ~{if defined(minimizerMinimizerLen) then ("--minimizer-len " +  '"' + minimizerMinimizerLen + '"') else ""} \
      ~{if defined(jellyfishJellyfishHashSize) then ("--jellyfish-hash-size " +  '"' + jellyfishJellyfishHashSize + '"') else ""} \
      ~{if defined(maxMaxDbSize) then ("--max-db-size " +  '"' + maxMaxDbSize + '"') else ""} \
      ~{if defined(shrinkShrinkBlockOffset) then ("--shrink-block-offset " +  '"' + shrinkShrinkBlockOffset + '"') else ""} \
      ~{true="--work-on-disk" false="" workWorkOnDisk} \
      ~{optionOption}
  >>>
}