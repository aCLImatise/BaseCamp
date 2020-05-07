class: CommandLineTool
id: LAshow.cwl
inputs:
- id: c
  doc: ': Show a cartoon of the LA between reads.'
  type: boolean
  inputBinding:
    prefix: -c
- id: a
  doc: ': Show the alignment of each LA.'
  type: boolean
  inputBinding:
    prefix: -a
- id: r
  doc: ": Show the alignment of each LA with -w bp's of A in each row."
  type: boolean
  inputBinding:
    prefix: -r
- id: o
  doc: ': Show only proper overlaps.'
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: ': Switch the roles of A- and B-reads.'
  type: boolean
  inputBinding:
    prefix: -F
- id: u
  doc: ': Show alignments in upper case.'
  type: boolean
  inputBinding:
    prefix: -U
- id: i
  doc: ': Indent alignments and cartoons by -i.'
  type: boolean
  inputBinding:
    prefix: -i
- id: w
  doc: ': Width of each row of alignment in symbols (-a) or bps (-r).'
  type: boolean
  inputBinding:
    prefix: -w
- id: b
  doc: ': # of border bp.s to show on each side of LA.'
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- LAshow
