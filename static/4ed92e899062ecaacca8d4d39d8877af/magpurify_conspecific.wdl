version 1.0

task MagpurifyConspecific {
  input {
    String mashMashDist
    Int maxMaxGenomes
    Int minMinGenomes
    String contigContigAln
    String contigContigPid
    String hitHitRate
    Array[String]+ excludeExclude
    String threadsThreads
    String? fnaFna
    String? outOut
    String? mashMashSketch
  }
  command <<<
    magpurify conspecific \
      ~{fnaFna} \
      ~{if defined(mashMashDist) then ("--mash-dist " +  '"' + mashMashDist + '"') else ""} \
      ~{if defined(maxMaxGenomes) then ("--max-genomes " +  '"' + maxMaxGenomes + '"') else ""} \
      ~{if defined(minMinGenomes) then ("--min-genomes " +  '"' + minMinGenomes + '"') else ""} \
      ~{if defined(contigContigAln) then ("--contig-aln " +  '"' + contigContigAln + '"') else ""} \
      ~{if defined(contigContigPid) then ("--contig-pid " +  '"' + contigContigPid + '"') else ""} \
      ~{if defined(hitHitRate) then ("--hit-rate " +  '"' + hitHitRate + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{outOut} \
      ~{mashMashSketch}
  >>>
}