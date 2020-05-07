version 1.0

task KrakenuniqBuild {
  input {
    Boolean downloadDownloadTaxonomy
    String downloadDownloadLibrary
    File addAddToLibrary
    Boolean buildBuild
    Boolean rebuildRebuild
    Boolean cleanClean
    String shrinkShrink
    Boolean standardStandard
    String dbDb
    Boolean threadsThreads
    String newNewDb
    String kmKmErLen
    String minimizerMinimizerLen
    String jellyfishJellyfishHashSize
    String jellyfishJellyfishBin
    Int maxMaxDbSize
    String shrinkShrinkBlockOffset
    Boolean workWorkOnDisk
    Boolean taxTaxIdsForGenomes
    Boolean taxTaxIdsForSequences
    String minMinContigSize
    String libraryLibraryDir
    String taxonomyTaxonomyDir
    String? taskTask
    String? optionOption
  }
  command <<<
    krakenuniq-build \
      ~{taskTask} \
      ~{true="--download-taxonomy" false="" downloadDownloadTaxonomy} \
      ~{if defined(downloadDownloadLibrary) then ("--download-library " +  '"' + downloadDownloadLibrary + '"') else ""} \
      ~{if defined(addAddToLibrary) then ("--add-to-library " +  '"' + addAddToLibrary + '"') else ""} \
      ~{true="--build" false="" buildBuild} \
      ~{true="--rebuild" false="" rebuildRebuild} \
      ~{true="--clean" false="" cleanClean} \
      ~{if defined(shrinkShrink) then ("--shrink " +  '"' + shrinkShrink + '"') else ""} \
      ~{true="--standard" false="" standardStandard} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{true="--threads" false="" threadsThreads} \
      ~{if defined(newNewDb) then ("--new-db " +  '"' + newNewDb + '"') else ""} \
      ~{if defined(kmKmErLen) then ("--kmer-len " +  '"' + kmKmErLen + '"') else ""} \
      ~{if defined(minimizerMinimizerLen) then ("--minimizer-len " +  '"' + minimizerMinimizerLen + '"') else ""} \
      ~{if defined(jellyfishJellyfishHashSize) then ("--jellyfish-hash-size " +  '"' + jellyfishJellyfishHashSize + '"') else ""} \
      ~{if defined(jellyfishJellyfishBin) then ("--jellyfish-bin " +  '"' + jellyfishJellyfishBin + '"') else ""} \
      ~{if defined(maxMaxDbSize) then ("--max-db-size " +  '"' + maxMaxDbSize + '"') else ""} \
      ~{if defined(shrinkShrinkBlockOffset) then ("--shrink-block-offset " +  '"' + shrinkShrinkBlockOffset + '"') else ""} \
      ~{true="--work-on-disk" false="" workWorkOnDisk} \
      ~{true="--taxids-for-genomes" false="" taxTaxIdsForGenomes} \
      ~{true="--taxids-for-sequences" false="" taxTaxIdsForSequences} \
      ~{if defined(minMinContigSize) then ("--min-contig-size " +  '"' + minMinContigSize + '"') else ""} \
      ~{if defined(libraryLibraryDir) then ("--library-dir " +  '"' + libraryLibraryDir + '"') else ""} \
      ~{if defined(taxonomyTaxonomyDir) then ("--taxonomy-dir " +  '"' + taxonomyTaxonomyDir + '"') else ""} \
      ~{optionOption}
  >>>
}