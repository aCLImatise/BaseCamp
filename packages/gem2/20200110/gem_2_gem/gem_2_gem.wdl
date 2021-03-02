version 1.0

task Gem2gem {
  input {
    File? defaultstdin
    File? sorted_merge
    Boolean? gapped_merging
    File? synchronous_merge
    Int? lines_per_block
    Int? threads
    File? defaultstdout
    File? index
    Boolean? verify
    Boolean? realign
    Int? splice_orientation_from_consensus
    Int? score_uniqueness_strata
    Boolean? score_quality_format
    Int? score_quality_levels
    Boolean? label
    String? trim
    Boolean? accumulate
    String? score
    String? filter
    String? full_filter
    Boolean? strip
    Boolean? barrier
    Boolean? collect
    Boolean? show_license
    Int gem_two_gem
  }
  command <<<
    gem_2_gem \
      ~{gem_two_gem} \
      ~{if defined(defaultstdin) then ("--input " +  '"' + defaultstdin + '"') else ""} \
      ~{if defined(sorted_merge) then ("--sorted-merge " +  '"' + sorted_merge + '"') else ""} \
      ~{if (gapped_merging) then "--gapped-merging" else ""} \
      ~{if defined(synchronous_merge) then ("--synchronous-merge " +  '"' + synchronous_merge + '"') else ""} \
      ~{if defined(lines_per_block) then ("--lines-per-block " +  '"' + lines_per_block + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(defaultstdout) then ("--output " +  '"' + defaultstdout + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if (verify) then "--verify" else ""} \
      ~{if (realign) then "--realign" else ""} \
      ~{if defined(splice_orientation_from_consensus) then ("--splice-orientation-from-consensus " +  '"' + splice_orientation_from_consensus + '"') else ""} \
      ~{if defined(score_uniqueness_strata) then ("--score-uniqueness-strata " +  '"' + score_uniqueness_strata + '"') else ""} \
      ~{if (score_quality_format) then "--score-quality-format" else ""} \
      ~{if defined(score_quality_levels) then ("--score-quality-levels " +  '"' + score_quality_levels + '"') else ""} \
      ~{if (label) then "--label" else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if (accumulate) then "--accumulate" else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(full_filter) then ("--full-filter " +  '"' + full_filter + '"') else ""} \
      ~{if (strip) then "--strip" else ""} \
      ~{if (barrier) then "--barrier" else ""} \
      ~{if (collect) then "--collect" else ""} \
      ~{if (show_license) then "--show-license" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gem2:20200110--0"
  }
  parameter_meta {
    defaultstdin: "(default=stdin)"
    sorted_merge: ", ...  (merge canonically labeled & sorted files)"
    gapped_merging: "(allow missing reads when sorted merging)"
    synchronous_merge: ", ...\\n(merge files line by line)"
    lines_per_block: "(default=50000)"
    threads: "(default=1)"
    defaultstdout: "(default=stdout)"
    index: "(GEM index, mandatory with -v,-r,-O)"
    verify: "(check alignment correctness)"
    realign: "(annotate alignments with substitutions)"
    splice_orientation_from_consensus: ", ... ,<couple_s>\\nwith <couple> := <donor_consensus>+<acceptor_consensus>\\n(annotate splices with their orientation\\nusing a splice site consensus,\\ndefault=GT+AG)"
    score_uniqueness_strata: "(strata considered to determine uniqueness,\\ndefault=2)"
    score_quality_format: "'offset-33'|'offset-64'\\n(mandatory before option -s if score)"
    score_quality_levels: ",<medium_quality>,<hi_quality>\\n(turning points to compute quality scores,\\ndeafault=10,20,30)"
    label: "(canonically label reads, save state)"
    trim: ",<right_len> (trim reads&qualities, save state)"
    accumulate: "(accumulate alignments, save state)"
    score: "(give alignments the specified score,\\n'-s help' shows syntax)"
    filter: ",<max_strata_distance>,<max_alignments>\\n(prune alignments based on their score)"
    full_filter: "(prune alignments based on the filter,\\n'-F help' shows syntax)"
    strip: "(erase last annotation from alignments)"
    barrier: "(put a barrier to collect operations)"
    collect: "(collect saved states, merging changes)"
    show_license: "(show license and exit)"
    gem_two_gem: "Options relevant to input (only one of -i, -m and -M can be specified):"
  }
  output {
    File out_stdout = stdout()
  }
}