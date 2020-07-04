version 1.0

task FilterBam {
  input {
    Boolean? best
    Boolean? no_introns
    Boolean? paired
    Boolean? uniq
    Boolean? verbose
    String? insert_limit
    String? max_intron_len
    String? max_sortes_test
    String? min_cover
    String? mini_d
    String? min_intron_len
    String? uniq_thresh
    String? common_gene_file
    String? pair_bed_file
    Boolean? pairwise_alignments
    String? in
    String? out
  }
  command <<<
    filterBam \
      ~{true="--best" false="" best} \
      ~{true="--noIntrons" false="" no_introns} \
      ~{true="--paired" false="" paired} \
      ~{true="--uniq" false="" uniq} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(insert_limit) then ("--insertLimit " +  '"' + insert_limit + '"') else ""} \
      ~{if defined(max_intron_len) then ("--maxIntronLen " +  '"' + max_intron_len + '"') else ""} \
      ~{if defined(max_sortes_test) then ("--maxSortesTest " +  '"' + max_sortes_test + '"') else ""} \
      ~{if defined(min_cover) then ("--minCover " +  '"' + min_cover + '"') else ""} \
      ~{if defined(mini_d) then ("--minId " +  '"' + mini_d + '"') else ""} \
      ~{if defined(min_intron_len) then ("--minIntronLen " +  '"' + min_intron_len + '"') else ""} \
      ~{if defined(uniq_thresh) then ("--uniqThresh " +  '"' + uniq_thresh + '"') else ""} \
      ~{if defined(common_gene_file) then ("--commonGeneFile " +  '"' + common_gene_file + '"') else ""} \
      ~{if defined(pair_bed_file) then ("--pairBedFile " +  '"' + pair_bed_file + '"') else ""} \
      ~{true="--pairwiseAlignments" false="" pairwise_alignments} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    best: "output all best matches that satisfy minId and minCover (default 0)"
    no_introns: "do not allow longer gaps -for RNA-RNA alignments- (default 0)"
    paired: "require that paired reads are on opposite strands of same target (default 0). NOTE: see prerequisite section above."
    uniq: "take only best match, iff, second best is much worse  (default 0)"
    verbose: "output debugging info (default 0)"
    insert_limit: "maximum assumed size of inserts (default 10)"
    max_intron_len: "maximal separation of paired reads (default 500000)"
    max_sortes_test: "maximal sortedness (default 100000)"
    min_cover: "minimal percentage of coverage of the query read (default 80)"
    mini_d: "minimal percentage of identity (default 92)"
    min_intron_len: "minimal     ''     ''   ''    ''   (default 35)"
    uniq_thresh: "threshold % for uniq, second best must be at most this fraction of best (default 0.96) "
    common_gene_file: "file name in which to write cases where one read maps to  several different genes"
    pair_bed_file: "file name of pairedness coverage: options: a .bed format file in which for each position the number of filtered read pairs is reported that contain the position in or between the reads"
    pairwise_alignments: "use in case alignments were done in pairwise fashion (default:  0)"
    in: ""
    out: ""
  }
}