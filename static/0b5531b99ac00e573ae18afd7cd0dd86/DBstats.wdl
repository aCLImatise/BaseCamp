version 1.0

task DBstats {
  input {
    Boolean? give_stats_untrimmed
    Boolean? show_histogram_read
    Boolean? show_histogram_mask
    Boolean? use_histogram_buckets
    Boolean? nu
    String db_stats
  }
  command <<<
    DBstats \
      ~{db_stats} \
      ~{true="-u" false="" give_stats_untrimmed} \
      ~{true="-n" false="" show_histogram_read} \
      ~{true="-m" false="" show_histogram_mask} \
      ~{true="-b" false="" use_histogram_buckets} \
      ~{true="-nu" false="" nu}
  >>>
  parameter_meta {
    give_stats_untrimmed: ": Give stats for the untrimmed database."
    show_histogram_read: ": Do not show histogram of read lengths."
    show_histogram_mask: ": Show histogram of mask intervals."
    use_histogram_buckets: ": Use histogram buckets of this size (default 1Kbp)."
    nu: ""
    db_stats: "[-nu] [-b<int(1000)>] [-m<mask>]+ <name:db|dam>"
  }
}