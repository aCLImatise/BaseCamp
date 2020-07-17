version 1.0

task DedupFLNCPerCluster.py {
  input {
    String? fast_a
    String? gff
    String de_duplicate
    String fl_nc
    String reads
    String per
    String cluster
  }
  command <<<
    dedup_FLNC_per_cluster.py \
      ~{de_duplicate} \
      ~{fl_nc} \
      ~{reads} \
      ~{per} \
      ~{cluster} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""}
  >>>
  parameter_meta {
    fast_a: ""
    gff: ""
    de_duplicate: ""
    fl_nc: ""
    reads: ""
    per: ""
    cluster: ""
  }
}