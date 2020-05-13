version 1.0

task IsONclustWriteFastq {
  input {
    String clustersClusters
    String fastFastQ
    String outOutFolder
    String nN
  }
  command <<<
    isONclust write_fastq \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(outOutFolder) then ("--outfolder " +  '"' + outOutFolder + '"') else ""} \
      ~{if defined(nN) then ("--N " +  '"' + nN + '"') else ""}
  >>>
}