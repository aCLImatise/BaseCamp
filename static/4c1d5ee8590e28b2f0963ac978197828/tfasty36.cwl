class: CommandLineTool
id: tfasty36.cwl
inputs:
- id: b
  doc: ':  high scores reported (limited by -E by default); =<int> forces <int> results;'
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: ':  expected fraction for band-optimization, joining'
  type: boolean
  inputBinding:
    prefix: -c
- id: c
  doc: ':  length of the query/sbjct name in alignments'
  type: boolean
  inputBinding:
    prefix: -C
- id: d
  doc: ':  number of alignments shown (limited by -E by default)'
  type: boolean
  inputBinding:
    prefix: -d
- id: d
  doc: enable debugging output
  type: boolean
  inputBinding:
    prefix: -D
- id: e
  doc: ':  expand_script to extend hits'
  type: boolean
  inputBinding:
    prefix: -e
- id: e
  doc: ':  E()-value,E()-repeat threshold'
  type: boolean
  inputBinding:
    prefix: -E
- id: f
  doc: ':  gap-open penalty'
  type: boolean
  inputBinding:
    prefix: -f
- id: f
  doc: ':  min E()-value displayed'
  type: boolean
  inputBinding:
    prefix: -F
- id: g
  doc: ':  gap-extension penalty'
  type: boolean
  inputBinding:
    prefix: -g
- id: h
  doc: show histogram
  type: boolean
  inputBinding:
    prefix: -H
- id: i
  doc: search with reverse-complement
  type: boolean
  inputBinding:
    prefix: -i
- id: i
  doc: interactive mode
  type: boolean
  inputBinding:
    prefix: -I
- id: j
  doc: ':  frame-shift, codon substitution penalty'
  type: boolean
  inputBinding:
    prefix: -j
- id: k
  doc: ':  number of shuffles'
  type: boolean
  inputBinding:
    prefix: -k
- id: l
  doc: ':  FASTLIBS abbreviation file'
  type: boolean
  inputBinding:
    prefix: -l
- id: l
  doc: long library descriptions
  type: boolean
  inputBinding:
    prefix: -L
- id: m
  doc: ":  Output/alignment format; 0 - standard \":. \" alignment; 1 - \" xX\"; 2\
    \ - \".MS..\"; 3 - separate >fasta entries; 4 - \"---\" alignment map; 5 - 0+4;\
    \ 6 - <html>; 8 - BLAST tabular; 8C commented BLAST tabular; 8CC BLAST tab CIGAR,\
    \ 8CD BLAST tab CIGAR ext; 8CB BLAST tab BTOP B - BLAST Query/Sbjct alignments;\
    \ BB - complete BLAST output; 9 - FASTA tabular; 9c - FASTA tabular encoded; 9C\
    \ FASTA tabular CIGAR encoded; 9B FASTA tabular BTOP encoded 10 - parseable key:value;\
    \ 11 - lav for LALIGN; A - aligned residue score F - 'F0,6,9c out_file' - alternate\
    \ output formats to files;"
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: ':  filter on library sequence length'
  type: boolean
  inputBinding:
    prefix: -M
- id: n
  doc: DNA/RNA query
  type: boolean
  inputBinding:
    prefix: -n
- id: n
  doc: ':  max library length before overlapping'
  type: boolean
  inputBinding:
    prefix: -N
- id: o
  doc: ':  offset coordinates of query/subject'
  type: boolean
  inputBinding:
    prefix: -o
- id: o
  doc: ':  write results to file'
  type: boolean
  inputBinding:
    prefix: -O
- id: p
  doc: protein query
  type: boolean
  inputBinding:
    prefix: -p
- id: q
  doc: quiet [default] -- do not prompt
  type: boolean
  inputBinding:
    prefix: -q
- id: q
  doc: quiet [default] -- do not prompt
  type: boolean
  inputBinding:
    prefix: -Q
- id: r
  doc: ':  [+0/0]  +match/-mismatch for DNA/RNA'
  type: boolean
  inputBinding:
    prefix: -r
- id: r
  doc: ':  raw score file'
  type: boolean
  inputBinding:
    prefix: -R
- id: s
  doc: ':  Scoring matrix: (protein) BL50, BP62 (sets -f -11 -g -1); P250, OPT5, VT200,
    VT160, P120, VT120, BL80, VT80, MD40, VT40, MD20, VT20, MD10, VT10; scoring matrix
    file name; -s ?BL50 adjusts matrix for short queries;'
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: filter lowercase (seg) residues
  type: boolean
  inputBinding:
    prefix: -S
- id: t
  doc: ':  translation genetic code'
  type: boolean
  inputBinding:
    prefix: -t
- id: t
  doc: ':  max threads/workers'
  type: boolean
  inputBinding:
    prefix: -T
- id: u
  doc: RNA query
  type: boolean
  inputBinding:
    prefix: -U
- id: v
  doc: ':  shuffle window size'
  type: boolean
  inputBinding:
    prefix: -v
- id: v
  doc: ':  annotation characters in query/library for aligments'
  type: boolean
  inputBinding:
    prefix: -V
- id: w
  doc: ':  width of alignment display'
  type: boolean
  inputBinding:
    prefix: -w
- id: x
  doc: ':  Extended options'
  type: boolean
  inputBinding:
    prefix: -X
- id: z
  doc: ':  Statistics estimation method: 1 - regression; -1 - no stats.; 0 - no scaling;
    2 - Maximum Likelihood Est.; 3 - Altschul/Gish; 4 - iter. regress.; 5 - regress
    w/variance; 6 - MLE with comp. adj.; 11 - 16 - estimates from shuffled library
    sequences; 21 - 26 - E2()-stats from shuffled high-scoring sequences;'
  type: boolean
  inputBinding:
    prefix: -z
- id: z
  doc: ':  [library entries] database size for E()-value'
  type: boolean
  inputBinding:
    prefix: -Z
outputs: []
cwlVersion: v1.1
baseCommand:
- tfasty36
