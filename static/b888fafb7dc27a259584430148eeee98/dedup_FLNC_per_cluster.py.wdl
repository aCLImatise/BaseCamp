version 1.0

task DedupFLNCPerClusterpy {
  input {
    String? gff
    String? fast_a
    String de_duplicate
    String fl_nc
    String reads
    String per
    String cluster
  }
  command <<<
    dedup_FLNC_per_cluster_py \
      ~{de_duplicate} \
      ~{fl_nc} \
      ~{reads} \
      ~{per} \
      ~{cluster} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""}
  >>>
  parameter_meta {
    gff: ""
    fast_a: ""
    de_duplicate: ""
    fl_nc: ""
    reads: ""
    per: ""
    cluster: ""
  }
  output {
    File out_stdout = stdout()
  }
}