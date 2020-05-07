version 1.0

task Scaffold {
  input {
    String outOut
    String numNumThreads
    String seedSeedKmEr
    String minMinContig
    String similarSimilar
    String minMinPairs
  }
  command <<<
    scaffold \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(seedSeedKmEr) then ("--seed_kmer " +  '"' + seedSeedKmEr + '"') else ""} \
      ~{if defined(minMinContig) then ("--min_contig " +  '"' + minMinContig + '"') else ""} \
      ~{if defined(similarSimilar) then ("--similar " +  '"' + similarSimilar + '"') else ""} \
      ~{if defined(minMinPairs) then ("--min_pairs " +  '"' + minMinPairs + '"') else ""}
  >>>
}