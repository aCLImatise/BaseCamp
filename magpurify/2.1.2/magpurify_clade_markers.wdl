version 1.0

task MagpurifyCladeMarkers {
  input {
    String dbDb
    Array[String]+ excludeExcludeClades
    Int minMinBinFract
    Int minMinContigFract
    Int minMinGeneFract
    Int minMinGenes
    String lowestLowestRank
    String threadsThreads
    String? fnaFna
    String? outOut
  }
  command <<<
    magpurify clade-markers \
      ~{fnaFna} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(excludeExcludeClades) then ("--exclude_clades " +  '"' + excludeExcludeClades + '"') else ""} \
      ~{if defined(minMinBinFract) then ("--min_bin_fract " +  '"' + minMinBinFract + '"') else ""} \
      ~{if defined(minMinContigFract) then ("--min_contig_fract " +  '"' + minMinContigFract + '"') else ""} \
      ~{if defined(minMinGeneFract) then ("--min_gene_fract " +  '"' + minMinGeneFract + '"') else ""} \
      ~{if defined(minMinGenes) then ("--min_genes " +  '"' + minMinGenes + '"') else ""} \
      ~{if defined(lowestLowestRank) then ("--lowest_rank " +  '"' + lowestLowestRank + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{outOut}
  >>>
}