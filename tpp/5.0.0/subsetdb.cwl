class: CommandLineTool
id: subsetdb.cwl
inputs:
- id: m
  doc: <str>    strings to match
  type: boolean
  inputBinding:
    prefix: -M
- id: n
  doc: '<str>    strings to not match Note: if -M or -N strings point to file names
    that exist, the match/nomatch accessions will be read from those files; one accession
    per line.'
  type: boolean
  inputBinding:
    prefix: -N
- id: e
  doc: by default, -N option only excludes entries that pass the -M criteria.  Using
    this option, both -M and -N options are mutually exclusive.
  type: boolean
  inputBinding:
    prefix: -e
- id: o
  doc: <str>    new subset database name (default appends .new to input name)
  type: boolean
  inputBinding:
    prefix: -O
- id: p
  doc: put subset database in same directory as input database
  type: boolean
  inputBinding:
    prefix: -P
- id: c
  doc: use case-sensitive comparisons (default is case in-sensitive)
  type: boolean
  inputBinding:
    prefix: -C
- id: r
  doc: reverse output database ("rev_" appended to description lines.)
  type: boolean
  inputBinding:
    prefix: -R
- id: r
  doc: <num>    pull out 'num' random sequences from database
  type: boolean
  inputBinding:
    prefix: -r
- id: s
  doc: <num>    create multiple database files, each with 'num' sequences in them
    (default 400)
  type: boolean
  inputBinding:
    prefix: -s
- id: d
  doc: <str>    when reversing output, append <string> instead of "rev_" to description
    lines. using this parameter invokes -R automatically.
  type: boolean
  inputBinding:
    prefix: -D
- id: s
  doc: print database statistics
  type: boolean
  inputBinding:
    prefix: -S
- id: l
  doc: export protein accession and sequence length to output file
  type: boolean
  inputBinding:
    prefix: -L
- id: v
  doc: verbose reporting
  type: boolean
  inputBinding:
    prefix: -V
- id: m
  doc: cleave/remove N-term methionine from each sequence
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- subsetdb
