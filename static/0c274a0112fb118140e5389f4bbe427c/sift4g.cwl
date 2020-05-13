class: CommandLineTool
id: sift4g.cwl
inputs:
- id: query
  doc: (required) input fasta query file
  type: File
  inputBinding:
    prefix: --query
- id: database
  doc: (required) input fasta database file
  type: File
  inputBinding:
    prefix: --database
- id: gap_open
  doc: 'default: 10 gap opening penalty, must be given as a positive integer '
  type: long
  inputBinding:
    prefix: --gap-open
- id: gap_extend
  doc: 'default: 1 gap extension penalty, must be given as a positive integer and
    must be less or equal to gap opening penalty'
  type: long
  inputBinding:
    prefix: --gap-extend
- id: matrix
  doc: 'default: BLOSUM_62 similarity matrix, can be one of the following: BLOSUM_45
    BLOSUM_50 BLOSUM_62 BLOSUM_80 BLOSUM_90 BLOSUM_30 BLOSUM_70 BLOSUM_250'
  type: string
  inputBinding:
    prefix: --matrix
- id: evalue
  doc: 'default: 0.0001 evalue threshold, alignments with higher evalue are filtered,
    must be given as a positive float'
  type: double
  inputBinding:
    prefix: --evalue
- id: max_aligns
  doc: 'default: 400 maximum number of alignments to be outputted'
  type: long
  inputBinding:
    prefix: --max-aligns
- id: algorithm
  doc: 'default: SW algorithm used for alignment, must be one of the following:  SW
    - Smith-Waterman local alignment NW - Needleman-Wunsch global alignment HW - semiglobal
    alignment OV - overlap alignment'
  type: string
  inputBinding:
    prefix: --algorithm
- id: cards
  doc: 'default: all available CUDA cards list of cards should be given as an array
    of card indexes delimited with nothing, for example usage of first two cards is
    given as --cards 01'
  type: long
  inputBinding:
    prefix: --cards
- id: out
  doc: 'default: current directory output directory for SIFT predictions'
  type: string
  inputBinding:
    prefix: --out
- id: sub_results
  doc: prints sub results (alignment file and a file per query containing its selected
    alignments forp rediction) to same directory defined with --out
  type: boolean
  inputBinding:
    prefix: --sub-results
- id: out_fmt
  doc: 'default: bm9 out format for the alignment file, must be one of the following:
    bm0      - blast m0 output format bm8      - blast m8 tabular output format bm9      -
    blast m9 commented tabular output format light    - score-name tabbed output'
  type: string
  inputBinding:
    prefix: --outfmt
- id: km_er_length
  doc: 'default: 5 length of kmers used for database search possible values: 3, 4,
    5'
  type: long
  inputBinding:
    prefix: --kmer-length
- id: max_candidates
  doc: 'default: 5000 number of database sequences passed on to the Smith-Waterman
    part'
  type: long
  inputBinding:
    prefix: --max-candidates
- id: median_threshold
  doc: 'default: 2.75 represents alignment diversity, used to output only a set of
    alignments'
  type: double
  inputBinding:
    prefix: --median-threshold
- id: subst
  doc: 'default: current directory directory containing substitution files for each
    query (extension .subst) files must have the same name as their corresponding
    query in FASTA file'
  type: string
  inputBinding:
    prefix: --subst
- id: seq_id
  doc: 'default: 100'
  type: long
  inputBinding:
    prefix: --seq-id
- id: threads
  doc: 'default: 8 number of threads used in thread pool'
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- sift4g
