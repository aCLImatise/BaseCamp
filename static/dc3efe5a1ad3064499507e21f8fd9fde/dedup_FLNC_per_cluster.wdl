version 1.0

task DedupFLNCPerCluster.py {
  input {
    String fastFastA
    String gffGff
    String faaFaa
    String? correctedCorrectedCsv
    String? clusterClusterFile
  }
  command <<<
    dedup_FLNC_per_cluster.py \
      ~{correctedCorrectedCsv} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(faaFaa) then ("--faa " +  '"' + faaFaa + '"') else ""} \
      ~{clusterClusterFile}
  >>>
}