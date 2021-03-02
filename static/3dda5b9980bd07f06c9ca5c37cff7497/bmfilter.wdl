version 1.0

task Bmfilter {
  input {
    Int? quality_channels
    Boolean? read_one
    Boolean? read_two
    Boolean? word_bitmask
    Boolean? use_mmap
    Int? max_ambiguities
    Boolean? clip_lowercase
    Int? clip_n_win
    Int? clip_quality
    Boolean? output_base_name
    Boolean? tag
    Boolean? post
    Boolean? report
    Boolean? post_clipped
    Int? complexity
    Int? short_seq
    Int? no_post_len
    Int? chop_length
    Int? chop_step
    Int? mask_early
    Int? post_low_complexity
    Int? heur_min_words
    Int? heur_many_words
    Int? heur_count_long_pct
    Int? heur_count_short_pct
    Int? heur_run_long_pct
    Int? heur_run_short_pct
    Int? heur_negligible_length
  }
  command <<<
    bmfilter \
      ~{if defined(quality_channels) then ("--quality-channels " +  '"' + quality_channels + '"') else ""} \
      ~{if (read_one) then "--read-1" else ""} \
      ~{if (read_two) then "--read-2" else ""} \
      ~{if (word_bitmask) then "--word-bitmask" else ""} \
      ~{if (use_mmap) then "--use-mmap" else ""} \
      ~{if defined(max_ambiguities) then ("--max-ambiguities " +  '"' + max_ambiguities + '"') else ""} \
      ~{if (clip_lowercase) then "--clip-lowercase" else ""} \
      ~{if defined(clip_n_win) then ("--clip-N-win " +  '"' + clip_n_win + '"') else ""} \
      ~{if defined(clip_quality) then ("--clip-quality " +  '"' + clip_quality + '"') else ""} \
      ~{if (output_base_name) then "--output" else ""} \
      ~{if (tag) then "--tag" else ""} \
      ~{if (post) then "--post" else ""} \
      ~{if (report) then "--report" else ""} \
      ~{if (post_clipped) then "--post-clipped" else ""} \
      ~{if defined(complexity) then ("--complexity " +  '"' + complexity + '"') else ""} \
      ~{if defined(short_seq) then ("--short-seq " +  '"' + short_seq + '"') else ""} \
      ~{if defined(no_post_len) then ("--no-post-len " +  '"' + no_post_len + '"') else ""} \
      ~{if defined(chop_length) then ("--chop-length " +  '"' + chop_length + '"') else ""} \
      ~{if defined(chop_step) then ("--chop-step " +  '"' + chop_step + '"') else ""} \
      ~{if defined(mask_early) then ("--mask-early " +  '"' + mask_early + '"') else ""} \
      ~{if defined(post_low_complexity) then ("--post-low-complexity " +  '"' + post_low_complexity + '"') else ""} \
      ~{if defined(heur_min_words) then ("--heur-min-words " +  '"' + heur_min_words + '"') else ""} \
      ~{if defined(heur_many_words) then ("--heur-many-words " +  '"' + heur_many_words + '"') else ""} \
      ~{if defined(heur_count_long_pct) then ("--heur-count-long-pct " +  '"' + heur_count_long_pct + '"') else ""} \
      ~{if defined(heur_count_short_pct) then ("--heur-count-short-pct " +  '"' + heur_count_short_pct + '"') else ""} \
      ~{if defined(heur_run_long_pct) then ("--heur-run-long-pct " +  '"' + heur_run_long_pct + '"') else ""} \
      ~{if defined(heur_run_short_pct) then ("--heur-run-short-pct " +  '"' + heur_run_short_pct + '"') else ""} \
      ~{if defined(heur_negligible_length) then ("--heur-negligible-length " +  '"' + heur_negligible_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quality_channels: "Number of quality channers for reads (0|1)"
    read_one: "=''                   -1 ''          Fasta or fastq (for -q1) file with reads, may be repeated"
    read_two: "=''                   -2 ''          Fasta or fastq (for -q1) file with read pair mates, if used should be repeated as many times as -1 is"
    word_bitmask: "=''             -b ''          Word bitmask file (may be repeated)"
    use_mmap: "Use mmap for word bitmask (slow unless used for few reads; intended for debug) [off]"
    max_ambiguities: "Maximal number of ambiguities per word"
    clip_lowercase: "Should lowercase head and tail of each read be clipped [off]"
    clip_n_win: "Clip sequence head or tail as long as it has at least one N per this long window"
    clip_quality: "Clip sequence head or tail with quality lower then this (for fastq input)"
    output_base_name: "=''                   -o ''          Output base name (suffixes will be added to it)"
    tag: "Produce .tag file [off]"
    post: "Produce .short?.fa and .long?.fa files [off]"
    report: "Produce .report file [off]"
    post_clipped: "Put clipped versions of sequences to output .fa files [off]"
    complexity: "Set complexity filter cutoff"
    short_seq: "Set sequence length to consider it as short for postprocessing"
    no_post_len: "Set longest sequence length to ignore postprocessing"
    chop_length: "Set length to chop short sequences to"
    chop_step: "Set step by which to chop short sequences"
    mask_early: "Set mask low complexity before applying heuristics"
    post_low_complexity: "Should 'unknown' low complexity reads be sent to post processing"
    heur_min_words: "Set minimal word count to apply heuristics"
    heur_many_words: "Set number of good words which switches watermarks (long/short)"
    heur_count_long_pct: ":60                  Set watermarks for matched word count for long sequences, int % of good words"
    heur_count_short_pct: ":80                 Set watermarks for matched word count for short sequences, int % of good words"
    heur_run_long_pct: ":20                    Set watermarks for longest match run for long sequences, int % of good words"
    heur_run_short_pct: ":40                   Set watermarks for longest match run for short sequences, int % of good words"
    heur_negligible_length: "Set cutoff for sequences to consider - these and shorter (after clipping) will be marked as foreign"
  }
  output {
    File out_stdout = stdout()
  }
}