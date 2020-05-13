class: CommandLineTool
id: ropebwt2.cwl
inputs:
- id: ropebwt2_r187
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fq_gz
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: l
  doc: leaf block length [512]
  type: long
  inputBinding:
    prefix: -l
- id: n
  doc: max number children per internal node [64]
  type: long
  inputBinding:
    prefix: -n
- id: s
  doc: build BWT in the reverse lexicographical order (RLO)
  type: boolean
  inputBinding:
    prefix: -s
- id: r
  doc: 'build BWT in RCLO, overriding -s '
  type: boolean
  inputBinding:
    prefix: -r
- id: m
  doc: batch size for multi-string indexing; 0 for single-string [10g]
  type: long
  inputBinding:
    prefix: -m
- id: p
  doc: always use a single thread
  type: boolean
  inputBinding:
    prefix: -P
- id: m
  doc: switch to single thread when < INT strings remain in a batch [1000]
  type: long
  inputBinding:
    prefix: -M
- id: i
  doc: read existing index in the FMR format from FILE, overriding -s/-r [null]
  type: File
  inputBinding:
    prefix: -i
- id: l
  doc: input in the one-sequence-per-line format
  type: boolean
  inputBinding:
    prefix: -L
- id: f
  doc: skip forward strand
  type: boolean
  inputBinding:
    prefix: -F
- id: r
  doc: skip reverse strand
  type: boolean
  inputBinding:
    prefix: -R
- id: n
  doc: skip sequences containing ambiguous bases
  type: boolean
  inputBinding:
    prefix: -N
- id: x
  doc: cut at ambiguous bases and discard segment with length <INT [0]
  type: long
  inputBinding:
    prefix: -x
- id: c
  doc: cut one base if forward==reverse
  type: boolean
  inputBinding:
    prefix: -C
- id: q
  doc: hard mask bases with QUAL<INT [0]
  type: long
  inputBinding:
    prefix: -q
- id: o
  doc: write output to FILE [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: b
  doc: dump the index in the binary FMR format
  type: boolean
  inputBinding:
    prefix: -b
- id: d
  doc: dump the index in fermi's FMD format
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: output the index in the Newick format (for debugging)
  type: boolean
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- ropebwt2
