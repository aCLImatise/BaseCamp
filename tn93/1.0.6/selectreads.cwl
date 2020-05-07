class: CommandLineTool
id: selectreads.cwl
inputs:
- id: o
  doc: direct the FASTA file with matching (and trimmed reads) to a file named OUTPUT
    (default=stdout)
  type: string
  inputBinding:
    prefix: -o
- id: a
  doc: "count the following characters AGAINST coverage numbers (default=gaponly)\
    \ gaponly: gap character ('-') is counted as lack of coverage; nfold: gap character\
    \ AND N-fold ambiguities (N and ?) are counted as lack of coverage; threefold:\
    \ gap character, 4-fold ambiguities, AND 3-fold ambiguities (e.g. M and S) are\
    \ counted as lack of coverage; any: ALL incompletely resolved characters are counted\
    \ as lack of coverage;"
  type: string
  inputBinding:
    prefix: -a
- id: s
  doc: start of the region to filter, 0-based, INCLUSIVE, must be an integer strictly
    than the length of the alignment (default=0L) e.g. -s 102 -e 203 will span nucleotides
    103 through 204
  type: string
  inputBinding:
    prefix: -s
- id: e
  doc: end of the region to filter, INCLUSIVE, 0-based, capped at [length of the alignment
    - 1] (default=0xFFFFFF)
  type: string
  inputBinding:
    prefix: -e
- id: c
  doc: require that retained reads cover at least this proportion of the region (default=0.95)
    must be a floating point in (0,1]
  type: string
  inputBinding:
    prefix: -c
- id: t
  doc: 'the type of data expected (default=dna) dna: DNA or RNA (IUPAC); protein :
    protein (IUPAC);'
  type: string
  inputBinding:
    prefix: -t
- id: q
  doc: 'do not report progress updates and other diagnostics to stderr '
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- selectreads
