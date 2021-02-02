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
      ~{if (give_stats_untrimmed) then "-u" else ""} \
      ~{if (show_histogram_read) then "-n" else ""} \
      ~{if (show_histogram_mask) then "-m" else ""} \
      ~{if (use_histogram_buckets) then "-b" else ""} \
      ~{if (nu) then "-nu" else ""}
  >>>
  parameter_meta {
    give_stats_untrimmed: ": Give stats for the untrimmed database."
    show_histogram_read: ": Do not show histogram of read lengths."
    show_histogram_mask: ": Show histogram of mask intervals."
    use_histogram_buckets: ": Use histogram buckets of this size (default 1Kbp)."
    nu: ""
    db_stats: "[-nu] [-b<int(1000)>] [-m<mask>]+ <name:db|dam>"
  }
  output {
    File out_stdout = stdout()
  }
}