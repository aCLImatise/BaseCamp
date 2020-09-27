class: CommandLineTool
id: lastz.cwl
inputs:
- id: in_self
  doc: "the target sequence is also the query\n(this replaces the query file)"
  type: boolean
  inputBinding:
    prefix: --self
- id: in_seed
  doc: <length>   use a word with no gaps instead of a seed pattern
  type: long
  inputBinding:
    prefix: --seed
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
- id: in_r_dotplot
  doc: create an output file suitable for plotting in R.
  type: File
  inputBinding:
    prefix: --rdotplot
- id: in_progress
  doc: report processing of every nth query
  type: string
  inputBinding:
    prefix: --progress
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
- id: out_r_dotplot
  doc: create an output file suitable for plotting in R.
  type: File
  outputBinding:
    glob: $(inputs.in_r_dotplot)
cwlVersion: v1.1
baseCommand:
- lastz
