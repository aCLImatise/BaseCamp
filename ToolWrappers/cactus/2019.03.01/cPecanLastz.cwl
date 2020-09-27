class: CommandLineTool
id: cPecanLastz.cwl
inputs:
- id: in_self
  doc: the target sequence is also the query
  type: boolean
  inputBinding:
    prefix: --self
- id: in_word
  doc: "set max bits for word hash;  use this to trade time for\nmemory, eliminating\
    \ thrashing for heavy seeds\n(default is 28 bits)"
  type: long
  inputBinding:
    prefix: --word
- id: in_filter
  doc: ",<M>       filter seed hits, requiring at least M matches and\nallowing no\
    \ more than T transversions\n(default is no filtering)"
  type: string
  inputBinding:
    prefix: --filter
- id: in_not_wins
  doc: require just one seed hit
  type: boolean
  inputBinding:
    prefix: --notwins
- id: in_twins
  doc: "..<maxgap> require two nearby seed hits on the same diagonal\n(default is\
    \ twins aren't required)"
  type: long
  inputBinding:
    prefix: --twins
- id: in_seed_queue
  doc: "set number of entries in seed hit queue\n(default is 262144)"
  type: long
  inputBinding:
    prefix: --seedqueue
- id: in_segments
  doc: "read anchor segments from a file, instead of\ndiscovering anchors via seeding"
  type: File
  inputBinding:
    prefix: --segments
- id: in_no_recover_seeds
  doc: don't recover hash-collision seed hits
  type: boolean
  inputBinding:
    prefix: --norecoverseeds
- id: in_recover_seeds
  doc: "recover hash-collision seed hits\n(default is not to recover seed hits)"
  type: boolean
  inputBinding:
    prefix: --recoverseeds
- id: in_step
  doc: set step length (default is 1)
  type: long
  inputBinding:
    prefix: --step
- id: in_chain
  doc: =<diag,anti>    perform chaining with given penalties for diagonal and
  type: boolean
  inputBinding:
    prefix: --chain
- id: in_no_trivial
  doc: "do not output a trivial self-alignment block if the\ntarget and query happen\
    \ to be identical"
  type: boolean
  inputBinding:
    prefix: --notrivial
- id: in_scores
  doc: "read substitution scores from a file\n(default is HOXD70)"
  type: File
  inputBinding:
    prefix: --scores
- id: in_match
  doc: ',<P>        scores are +R/-P for match/mismatch'
  type: string
  inputBinding:
    prefix: --match
- id: in_gap
  doc: =<open,extend>    set gap open and extend penalties (default is 400,30)
  type: boolean
  inputBinding:
    prefix: --gap
- id: in_x_drop
  doc: set x-drop threshold (default is 10*sub[A][A])
  type: long
  inputBinding:
    prefix: --xdrop
- id: in_y_drop
  doc: set y-drop threshold (default is open+300extend)
  type: long
  inputBinding:
    prefix: --ydrop
- id: in_nox_trim
  doc: "if x-drop extension encounters end of sequence, don't\ntrim back to peak score\
    \ (use this for short reads)"
  type: boolean
  inputBinding:
    prefix: --noxtrim
- id: in_no_y_trim
  doc: "if y-drop extension encounters end of sequence, don't\ntrim back to peak score\
    \ (use this for short reads)"
  type: boolean
  inputBinding:
    prefix: --noytrim
- id: in_infer
  doc: infer scores from the sequences, then use them
  type: string
  inputBinding:
    prefix: --infer
- id: in_infer_only
  doc: "infer scores but don't use them (requires --infscores)\nall inference options\
    \ are read from the control file"
  type: File
  inputBinding:
    prefix: --inferonly
- id: in_inf_scores
  doc: '[=<file>]   write inferred scores to a file'
  type: boolean
  inputBinding:
    prefix: --infscores
- id: in_hsp_thresh
  doc: "set threshold for high scoring pairs (default is 3000)\nungapped extensions\
    \ scoring lower are discarded\n<score> can also be a percentage or base count"
  type: long
  inputBinding:
    prefix: --hspthresh
- id: in_exact
  doc: "set threshold for exact matches\nif specified, exact matches are found rather\
    \ than high\nscoring pairs (replaces --hspthresh)"
  type: long
  inputBinding:
    prefix: --exact
- id: in_mismatch
  doc: ",<length> set threshold for mismatches\nif specified, N-mismatch segments\
    \ are found rather\nthan high scoring pairs (replaces --hspthresh)"
  type: long
  inputBinding:
    prefix: --mismatch
- id: in_inner
  doc: "set threshold for HSPs during interpolation\n(default is no interpolation)"
  type: string
  inputBinding:
    prefix: --inner
- id: in_gapped_thresh
  doc: "set threshold for gapped alignments\ngapped extensions scoring lower are discarded\n\
    <score> can also be a percentage or base count\n(default is to use same value\
    \ as --hspthresh)"
  type: string
  inputBinding:
    prefix: --gappedthresh
- id: in_ball
  doc: "[%]      set minimum score required of words 'in' a quantum ball"
  type: string
  inputBinding:
    prefix: --ball
- id: in_no_mirror
  doc: "don't report mirror-image alignments when using --self\n(default is to skip\
    \ processing them, but recreate them\nin the output)"
  type: boolean
  inputBinding:
    prefix: --nomirror
- id: in_allocate
  doc: ":traceback=<bytes>  space for trace-back information\n(default is 80.0M)"
  type: boolean
  inputBinding:
    prefix: --allocate
- id: in_max_word_count
  doc: "[%] limit seed word-repeats in target\nwords occurring too often are not used\
    \ in seed hits\n(default is no word-repeat limit)"
  type: string
  inputBinding:
    prefix: --maxwordcount
- id: in_masking
  doc: "mask any position in target hit this many times\nzero indicates no masking\n\
    (default is no masking)"
  type: string
  inputBinding:
    prefix: --masking
- id: in_identity
  doc: "[..<max>] filter alignments by percent identity\n0<=min<=max<=100;  blocks\
    \ (or HSPs) outside min..max\nare discarded\n(default is no identity filtering)"
  type: long
  inputBinding:
    prefix: --identity
- id: in_coverage
  doc: "[..<max>] filter alignments by percentage of query covered\n0<=min<=max<=100;\
    \  blocks (or HSPs) outside min..max\nare discarded\n(default is no query coverage\
    \ filtering)"
  type: long
  inputBinding:
    prefix: --coverage
- id: in_continuity
  doc: "[..<max>] filter alignments by percent continuity\n0<=min<=max<=100;  blocks\
    \ (or HSPs) outside min..max\nare discarded\n(default is no continuity filtering)"
  type: long
  inputBinding:
    prefix: --continuity
- id: in_output
  doc: "specify output alignment file;  otherwise alignments\nare written to stdout"
  type: File
  inputBinding:
    prefix: --output
- id: in_format
  doc: "specify output format; one of lav, axt, maf, cigar,\nrdotplot, text or general\n\
    (use --help=formats for more details)\n(by default output is LAV)"
  type: string
  inputBinding:
    prefix: --format
- id: in_read_group
  doc: "specify readgroup tags for SAM format\n(use --help=formats for more details)"
  type: string
  inputBinding:
    prefix: --readgroup
- id: in_mark_end
  doc: Write a comment at the end of the output file
  type: File
  inputBinding:
    prefix: --markend
- id: in_r_dotplot
  doc: create an output file suitable for plotting in R.
  type: File
  inputBinding:
    prefix: --rdotplot
- id: in_verbosity
  doc: "set info level (0 is minimum, 10 is everything)\n(default is 0)"
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_table_only
  doc: "[=count]    just produce the target position table, don't\nsearch for seeds"
  type: boolean
  inputBinding:
    prefix: --tableonly
- id: in_write_segments
  doc: "just produce the anchor segments table, don't\nperform gapped alignment"
  type: File
  inputBinding:
    prefix: --writesegments
- id: in_write_capsule
  doc: write the target and seed word table to a file
  type: File
  inputBinding:
    prefix: --writecapsule
- id: in_target_capsule
  doc: "read the target seed word table from a file\n(this replaces the target specifier)"
  type: File
  inputBinding:
    prefix: --targetcapsule
- id: in_anti_diagonal
  doc: (by default no chaining is performed)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "specify output alignment file;  otherwise alignments\nare written to stdout"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_mark_end
  doc: Write a comment at the end of the output file
  type: File
  outputBinding:
    glob: $(inputs.in_mark_end)
- id: out_r_dotplot
  doc: create an output file suitable for plotting in R.
  type: File
  outputBinding:
    glob: $(inputs.in_r_dotplot)
cwlVersion: v1.1
baseCommand:
- cPecanLastz
