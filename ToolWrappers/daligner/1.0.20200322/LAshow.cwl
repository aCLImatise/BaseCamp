class: CommandLineTool
id: LAshow.cwl
inputs:
- id: in_show_cartoon_la
  doc: ': Show a cartoon of the LA between reads.'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_show_alignment_la
  doc: ': Show the alignment of each LA.'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_with_w_bps
  doc: ": Show the alignment of each LA with -w bp's of A in each row."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_show_only_overlaps
  doc: ': Show only proper overlaps.'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_switch_roles_breads
  doc: ': Switch the roles of A- and B-reads.'
  type: boolean
  inputBinding:
    prefix: -F
- id: in_show_alignments_upper
  doc: ': Show alignments in upper case.'
  type: boolean
  inputBinding:
    prefix: -U
- id: in_indent_alignments_cartoons
  doc: ': Indent alignments and cartoons by -i.'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_width_a_r
  doc: ': Width of each row of alignment in symbols (-a) or bps (-r).'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_border_bps_show
  doc: ': # of border bp.s to show on each side of LA.'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_car_ouf
  doc: ''
  type: boolean
  inputBinding:
    prefix: -caroUF
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- LAshow
