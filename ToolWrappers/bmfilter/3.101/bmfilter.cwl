class: CommandLineTool
id: bmfilter.cwl
inputs:
- id: in_quality_channels
  doc: -q 0           Number of quality channers for reads (0|1)
  type: long
  inputBinding:
    prefix: --quality-channels
- id: in_read_one
  doc: =''                   -1 ''          Fasta or fastq (for -q1) file with reads,
    may be repeated
  type: boolean
  inputBinding:
    prefix: --read-1
- id: in_read_two
  doc: =''                   -2 ''          Fasta or fastq (for -q1) file with read
    pair mates, if used should be repeated as many times as -1 is
  type: boolean
  inputBinding:
    prefix: --read-2
- id: in_word_bitmask
  doc: =''             -b ''          Word bitmask file (may be repeated)
  type: boolean
  inputBinding:
    prefix: --word-bitmask
- id: in_use_mmap
  doc: -M             Use mmap for word bitmask (slow unless used for few reads; intended
    for debug) [off]
  type: boolean
  inputBinding:
    prefix: --use-mmap
- id: in_max_ambiguities
  doc: -a 0           Maximal number of ambiguities per word
  type: long
  inputBinding:
    prefix: --max-ambiguities
- id: in_clip_lowercase
  doc: -l             Should lowercase head and tail of each read be clipped [off]
  type: boolean
  inputBinding:
    prefix: --clip-lowercase
- id: in_clip_n_win
  doc: -N 0           Clip sequence head or tail as long as it has at least one N
    per this long window
  type: long
  inputBinding:
    prefix: --clip-N-win
- id: in_clip_quality
  doc: -Q 0           Clip sequence head or tail with quality lower then this (for
    fastq input)
  type: long
  inputBinding:
    prefix: --clip-quality
- id: in_output
  doc: =''                   -o ''          Output base name (suffixes will be added
    to it)
  type: boolean
  inputBinding:
    prefix: --output
- id: in_tag
  doc: -T             Produce .tag file [off]
  type: boolean
  inputBinding:
    prefix: --tag
- id: in_post
  doc: -P             Produce .short?.fa and .long?.fa files [off]
  type: boolean
  inputBinding:
    prefix: --post
- id: in_report
  doc: -R             Produce .report file [off]
  type: boolean
  inputBinding:
    prefix: --report
- id: in_post_clipped
  doc: -z             Put clipped versions of sequences to output .fa files [off]
  type: boolean
  inputBinding:
    prefix: --post-clipped
- id: in_complexity
  doc: -F 2           Set complexity filter cutoff
  type: long
  inputBinding:
    prefix: --complexity
- id: in_short_seq
  doc: -L 1073741823  Set sequence length to consider it as short for postprocessing
  type: long
  inputBinding:
    prefix: --short-seq
- id: in_no_post_len
  doc: -n 25          Set longest sequence length to ignore postprocessing
  type: long
  inputBinding:
    prefix: --no-post-len
- id: in_chop_length
  doc: -c 32          Set length to chop short sequences to
  type: long
  inputBinding:
    prefix: --chop-length
- id: in_chop_step
  doc: -s 4           Set step by which to chop short sequences
  type: long
  inputBinding:
    prefix: --chop-step
- id: in_mask_early
  doc: -m 0           Set mask low complexity before applying heuristics
  type: long
  inputBinding:
    prefix: --mask-early
- id: in_post_low_complexity
  doc: -Z 0           Should 'unknown' low complexity reads be sent to post processing
  type: long
  inputBinding:
    prefix: --post-low-complexity
- id: in_heur_min_words
  doc: Set minimal word count to apply heuristics
  type: long
  inputBinding:
    prefix: --heur-min-words
- id: in_heur_many_words
  doc: Set number of good words which switches watermarks (long/short)
  type: long
  inputBinding:
    prefix: --heur-many-words
- id: in_heur_count_long_pct
  doc: :60                  Set watermarks for matched word count for long sequences,
    int % of good words
  type: long
  inputBinding:
    prefix: --heur-count-long-pct
- id: in_heur_count_short_pct
  doc: :80                 Set watermarks for matched word count for short sequences,
    int % of good words
  type: long
  inputBinding:
    prefix: --heur-count-short-pct
- id: in_heur_run_long_pct
  doc: :20                    Set watermarks for longest match run for long sequences,
    int % of good words
  type: long
  inputBinding:
    prefix: --heur-run-long-pct
- id: in_heur_run_short_pct
  doc: :40                   Set watermarks for longest match run for short sequences,
    int % of good words
  type: long
  inputBinding:
    prefix: --heur-run-short-pct
- id: in_heur_negligible_length
  doc: Set cutoff for sequences to consider - these and shorter (after clipping) will
    be marked as foreign
  type: long
  inputBinding:
    prefix: --heur-negligible-length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bmfilter
