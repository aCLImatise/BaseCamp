class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bmfilter.cwl
inputs:
- id: quality_channels
  doc: -q 0           Number of quality channers for reads (0|1)
  type: string
  inputBinding:
    prefix: --quality-channels
- id: read_one
  doc: =''                   -1 ''          Fasta or fastq (for -q1) file with reads,
    may be repeated
  type: boolean
  inputBinding:
    prefix: --read-1
- id: read_two
  doc: =''                   -2 ''          Fasta or fastq (for -q1) file with read
    pair mates, if used should be repeated as many times as -1 is
  type: boolean
  inputBinding:
    prefix: --read-2
- id: word_bitmask
  doc: =''             -b ''          Word bitmask file (may be repeated)
  type: boolean
  inputBinding:
    prefix: --word-bitmask
- id: use_mmap
  doc: -M             Use mmap for word bitmask (slow unless used for few reads; intended
    for debug) [off]
  type: boolean
  inputBinding:
    prefix: --use-mmap
- id: max_ambiguities
  doc: -a 0           Maximal number of ambiguities per word
  type: string
  inputBinding:
    prefix: --max-ambiguities
- id: clip_lowercase
  doc: -l             Should lowercase head and tail of each read be clipped [off]
  type: boolean
  inputBinding:
    prefix: --clip-lowercase
- id: clip_n_win
  doc: -N 0           Clip sequence head or tail as long as it has at least one N
    per this long window
  type: string
  inputBinding:
    prefix: --clip-N-win
- id: clip_quality
  doc: -Q 0           Clip sequence head or tail with quality lower then this (for
    fastq input)
  type: string
  inputBinding:
    prefix: --clip-quality
- id: output
  doc: =''                   -o ''          Output base name (suffixes will be added
    to it)
  type: boolean
  inputBinding:
    prefix: --output
- id: tag
  doc: -T             Produce .tag file [off]
  type: boolean
  inputBinding:
    prefix: --tag
- id: post
  doc: -P             Produce .short?.fa and .long?.fa files [off]
  type: boolean
  inputBinding:
    prefix: --post
- id: report
  doc: -R             Produce .report file [off]
  type: boolean
  inputBinding:
    prefix: --report
- id: post_clipped
  doc: -z             Put clipped versions of sequences to output .fa files [off]
  type: boolean
  inputBinding:
    prefix: --post-clipped
- id: complexity
  doc: -F 2           Set complexity filter cutoff
  type: string
  inputBinding:
    prefix: --complexity
- id: short_seq
  doc: -L 1073741823  Set sequence length to consider it as short for postprocessing
  type: string
  inputBinding:
    prefix: --short-seq
- id: no_post_len
  doc: -n 25          Set longest sequence length to ignore postprocessing
  type: string
  inputBinding:
    prefix: --no-post-len
- id: chop_length
  doc: -c 32          Set length to chop short sequences to
  type: string
  inputBinding:
    prefix: --chop-length
- id: chop_step
  doc: -s 4           Set step by which to chop short sequences
  type: string
  inputBinding:
    prefix: --chop-step
- id: mask_early
  doc: -m 0           Set mask low complexity before applying heuristics
  type: string
  inputBinding:
    prefix: --mask-early
- id: post_low_complexity
  doc: -Z 0           Should 'unknown' low complexity reads be sent to post processing
  type: string
  inputBinding:
    prefix: --post-low-complexity
- id: heur_min_words
  doc: Set minimal word count to apply heuristics
  type: string
  inputBinding:
    prefix: --heur-min-words
- id: heur_many_words
  doc: Set number of good words which switches watermarks (long/short)
  type: string
  inputBinding:
    prefix: --heur-many-words
- id: heur_count_long_pct
  doc: :60                  Set watermarks for matched word count for long sequences,
    int % of good words
  type: string
  inputBinding:
    prefix: --heur-count-long-pct
- id: heur_count_short_pct
  doc: :80                 Set watermarks for matched word count for short sequences,
    int % of good words
  type: string
  inputBinding:
    prefix: --heur-count-short-pct
- id: heur_run_long_pct
  doc: :20                    Set watermarks for longest match run for long sequences,
    int % of good words
  type: string
  inputBinding:
    prefix: --heur-run-long-pct
- id: heur_run_short_pct
  doc: :40                   Set watermarks for longest match run for short sequences,
    int % of good words
  type: string
  inputBinding:
    prefix: --heur-run-short-pct
- id: heur_negligible_length
  doc: Set cutoff for sequences to consider - these and shorter (after clipping) will
    be marked as foreign
  type: string
  inputBinding:
    prefix: --heur-negligible-length
outputs: []
cwlVersion: v1.1
baseCommand:
- bmfilter
