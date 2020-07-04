version 1.0

task FilterPSL.pl {
  input {
    String? pair_bed
    String? mini_d
    String? min_cover
    Boolean? uniq
    Boolean? uniq_thresh
    Boolean? best
    String? common_gene_file
    Boolean? no_introns
    Boolean? paired
    String? max_intron_len
    Boolean? verbose
  }
  command <<<
    filterPSL.pl \
      ~{if defined(pair_bed) then ("--pairbed " +  '"' + pair_bed + '"') else ""} \
      ~{if defined(mini_d) then ("--minId " +  '"' + mini_d + '"') else ""} \
      ~{if defined(min_cover) then ("--minCover " +  '"' + min_cover + '"') else ""} \
      ~{true="--uniq" false="" uniq} \
      ~{true="--uniqthresh" false="" uniq_thresh} \
      ~{true="--best" false="" best} \
      ~{if defined(common_gene_file) then ("--commongenefile " +  '"' + common_gene_file + '"') else ""} \
      ~{true="--nointrons" false="" no_introns} \
      ~{true="--paired" false="" paired} \
      ~{if defined(max_intron_len) then ("--maxintronlen " +  '"' + max_intron_len + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    pair_bed: "file name of pairedness coverage: a .bed format file in which for each position the number of filtered read pairs is reported that contain the position in or between the reads"
    mini_d: "minimal percentage of identity (default 92)"
    min_cover: "minimal percentage of coverage of the query read (default 80)"
    uniq: "take only best match and only, when second best is much worse (default false)"
    uniq_thresh: "threshold % for uniq, second best must be at most this fraction of best (default .96)"
    best: "output all best matches that satisfy minId and minCover"
    common_gene_file: "file name in which to write cases where one read maps to several different genes"
    no_introns: "do not allow longer gaps (for RNA-RNA alignments)"
    paired: "require that paired reads are on opposite strands of same target(default false)"
    max_intron_len: "maximal separation of paired reads (default 500000"
    verbose: "output debugging info (default false)"
  }
}