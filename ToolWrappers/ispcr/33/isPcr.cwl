class: CommandLineTool
id: isPcr.cwl
inputs:
- id: in_ooc
  doc: "Use overused tile file N.ooc.  N should correspond to\nthe tileSize"
  type: File?
  inputBinding:
    prefix: -ooc
- id: in_tile_size
  doc: "the size of match that triggers an alignment.\nDefault is 11 ."
  type: long?
  inputBinding:
    prefix: -tileSize
- id: in_step_size
  doc: spacing between tiles. Default is 5.
  type: long?
  inputBinding:
    prefix: -stepSize
- id: in_maxsize
  doc: '- Maximum size of PCR product (default 4000)'
  type: long?
  inputBinding:
    prefix: -maxSize
- id: in_minsize
  doc: '- Minimum size of PCR product (default 0)'
  type: long?
  inputBinding:
    prefix: -minSize
- id: in_min_perfect
  doc: "- Minimum size of perfect match at 3' end of primer (default 15)"
  type: long?
  inputBinding:
    prefix: -minPerfect
- id: in_min_good
  doc: '- Minimum size where there must be 2 matches for each mismatch (default 15)'
  type: long?
  inputBinding:
    prefix: -minGood
- id: in_mask
  doc: "Mask out repeats.  Alignments won't be started in masked region\nbut may extend\
    \ through it in nucleotide searches.  Masked areas\nare ignored entirely in protein\
    \ or translated searches. Types are\nlower - mask out lower cased sequence\nupper\
    \ - mask out upper cased sequence\nout   - mask according to database.out RepeatMasker\
    \ .out file\nfile.out - mask database according to RepeatMasker file.out"
  type: File?
  inputBinding:
    prefix: -mask
- id: in_make_ooc
  doc: Make overused tile file. Database needs to be complete genome.
  type: File?
  inputBinding:
    prefix: -makeOoc
- id: in_rep_match
  doc: "sets the number of repetitions of a tile allowed before\nit is marked as overused.\
    \  Typically this is 256 for tileSize\n12, 1024 for tile size 11, 4096 for tile\
    \ size 10.\nDefault is 1024.  Only comes into play with makeOoc"
  type: long?
  inputBinding:
    prefix: -repMatch
- id: in_flip_reverse
  doc: complement reverse (second) primer before using
  type: string?
  inputBinding:
    prefix: -flipReverse
- id: in_out
  doc: "- Output format.  Either\nfa - fasta with position, primers in header (default)\n\
    bed - tab delimited format. Fields: chrom/start/end/name/score/strand\npsl - blat\
    \ format.\n"
  type: string?
  inputBinding:
    prefix: -out
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_query
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mask
  doc: "Mask out repeats.  Alignments won't be started in masked region\nbut may extend\
    \ through it in nucleotide searches.  Masked areas\nare ignored entirely in protein\
    \ or translated searches. Types are\nlower - mask out lower cased sequence\nupper\
    \ - mask out upper cased sequence\nout   - mask according to database.out RepeatMasker\
    \ .out file\nfile.out - mask database according to RepeatMasker file.out"
  type: File?
  outputBinding:
    glob: $(inputs.in_mask)
hints: []
cwlVersion: v1.1
baseCommand:
- isPcr
