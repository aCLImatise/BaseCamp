version 1.0

task SambambaSort {
  input {
    String memoryMemoryLimit
    String tmpdirTmpdir
    String outOut
    Boolean sortSortByName
    Boolean sortSortPicard
    Boolean naturalNaturalSort
    Boolean matchMatchMates
    String compressionCompressionLevel
    Boolean uncompressedUncompressedChunks
    Boolean showShowProgress
    String nNThreads
    String filterFilter
    String? sambaSambaMbaSort
    String? inputInputBam
  }
  command <<<
    sambamba sort \
      ~{sambaSambaMbaSort} \
      ~{if defined(memoryMemoryLimit) then ("--memory-limit " +  '"' + memoryMemoryLimit + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--sort-by-name" false="" sortSortByName} \
      ~{true="--sort-picard" false="" sortSortPicard} \
      ~{true="--natural-sort" false="" naturalNaturalSort} \
      ~{true="--match-mates" false="" matchMatchMates} \
      ~{if defined(compressionCompressionLevel) then ("--compression-level " +  '"' + compressionCompressionLevel + '"') else ""} \
      ~{true="--uncompressed-chunks" false="" uncompressedUncompressedChunks} \
      ~{true="--show-progress" false="" showShowProgress} \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{inputInputBam}
  >>>
}