class: CommandLineTool
id: readreduce.cwl
inputs:
- id: o
  doc: direct the output to a file named OUTPUT (default=stdout)
  type: string
  inputBinding:
    prefix: -o
- id: a
  doc: "handle ambigous nucleotides using one of the following strategies (default=resolve)\
    \ resolve: resolve ambiguities to minimize distance (e.g.R matches A); average:\
    \ average ambiguities (e.g.R-A is 0.5 A-A and 0.5 G-A); skip: do not include sites\
    \ with ambiguous nucleotides in distance calculations; gapmm: a gap ('-') matched\
    \ to anything other than another gap is like matching an N (4-fold ambig) to it;"
  type: string
  inputBinding:
    prefix: -a
- id: l
  doc: 'merge reads that match over at least this many positions (an integer >0, default=100):'
  type: string
  inputBinding:
    prefix: -l
- id: s
  doc: 'mimimum cluster size to report in output (an integer >0, default=16):'
  type: long
  inputBinding:
    prefix: -s
- id: d
  doc: "if sequence name is of the form 'somethingCOUNTS_IN_NAMEinteger' then treat\
    \ the integer as a copy number when counting reads; also output cluster sizes\
    \ using the same separator (a character, default=':'):"
  type: string
  inputBinding:
    prefix: -d
- id: j
  doc: 'report the results to a JSON file (instead of a FASTA MSA) '
  type: boolean
  inputBinding:
    prefix: -j
- id: q
  doc: 'do not report progress updates and other diagnostics to stderr '
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- readreduce
