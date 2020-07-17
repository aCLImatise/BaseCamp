version 1.0

task Bmfilter {
  input {
    String? quality_channels
    Boolean? read_one
    Boolean? read_two
    Boolean? word_bitmask
    Boolean? use_mmap
    String? max_ambiguities
    Boolean? clip_lowercase
    String? clip_n_win
    String? clip_quality
    Boolean? output_base_name
    Boolean? tag
    Boolean? post
    Boolean? report
    Boolean? post_clipped
    String? complexity
    String? short_seq
    String? no_post_len
    String? chop_length
    String? chop_step
    String? mask_early
    String? post_low_complexity
    String? heur_min_words
    String? heur_many_words
    String? heur_count_long_pct
    String? heur_count_short_pct
    String? heur_run_long_pct
    String? heur_run_short_pct
    String? heur_negligible_length
  }
  command <<<
    bmfilter \
      ~{if defined(quality_channels) then ("--quality-channels " +  '"' + quality_channels + '"') else ""} \
      ~{true="--read-1" false="" read_one} \
      ~{true="--read-2" false="" read_two} \
      ~{true="--word-bitmask" false="" word_bitmask} \
      ~{true="--use-mmap" false="" use_mmap} \
      ~{if defined(max_ambiguities) then ("--max-ambiguities " +  '"' + max_ambiguities + '"') else ""} \
      ~{true="--clip-lowercase" false="" clip_lowercase} \
      ~{if defined(clip_n_win) then ("--clip-N-win " +  '"' + clip_n_win + '"') else ""} \
      ~{if defined(clip_quality) then ("--clip-quality " +  '"' + clip_quality + '"') else ""} \
      ~{true="--output" false="" output_base_name} \
      ~{true="--tag" false="" tag} \
      ~{true="--post" false="" post} \
      ~{true="--report" false="" report} \
      ~{true="--post-clipped" false="" post_clipped} \
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
  parameter_meta {
    quality_channels: "-q 0           Number of quality channers for reads (0|1)"
    read_one: "=''                   -1 ''          Fasta or fastq (for -q1) file with reads, may be repeated"
    read_two: "=''                   -2 ''          Fasta or fastq (for -q1) file with read pair mates, if used should be repeated as many times as -1 is"
    word_bitmask: "=''             -b ''          Word bitmask file (may be repeated)"
    use_mmap: "-M             Use mmap for word bitmask (slow unless used for few reads; intended for debug) [off]"
    max_ambiguities: "-a 0           Maximal number of ambiguities per word"
    clip_lowercase: "-l             Should lowercase head and tail of each read be clipped [off]"
    clip_n_win: "-N 0           Clip sequence head or tail as long as it has at least one N per this long window"
    clip_quality: "-Q 0           Clip sequence head or tail with quality lower then this (for fastq input)"
    output_base_name: "=''                   -o ''          Output base name (suffixes will be added to it)"
    tag: "-T             Produce .tag file [off]"
    post: "-P             Produce .short?.fa and .long?.fa files [off]"
    report: "-R             Produce .report file [off]"
    post_clipped: "-z             Put clipped versions of sequences to output .fa files [off]"
    complexity: "-F 2           Set complexity filter cutoff"
    short_seq: "-L 1073741823  Set sequence length to consider it as short for postprocessing"
    no_post_len: "-n 25          Set longest sequence length to ignore postprocessing"
    chop_length: "-c 32          Set length to chop short sequences to"
    chop_step: "-s 4           Set step by which to chop short sequences"
    mask_early: "-m 0           Set mask low complexity before applying heuristics"
    post_low_complexity: "-Z 0           Should 'unknown' low complexity reads be sent to post processing"
    heur_min_words: "Set minimal word count to apply heuristics"
    heur_many_words: "Set number of good words which switches watermarks (long/short)"
    heur_count_long_pct: ":60                  Set watermarks for matched word count for long sequences, int % of good words"
    heur_count_short_pct: ":80                 Set watermarks for matched word count for short sequences, int % of good words"
    heur_run_long_pct: ":20                    Set watermarks for longest match run for long sequences, int % of good words"
    heur_run_short_pct: ":40                   Set watermarks for longest match run for short sequences, int % of good words"
    heur_negligible_length: "Set cutoff for sequences to consider - these and shorter (after clipping) will be marked as foreign"
  }
}