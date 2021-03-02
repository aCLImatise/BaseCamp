class: CommandLineTool
id: xmatchview_hive.py.cwl
inputs:
- id: in_x
  doc: file [1 vs. 2] (cross_match .rep or Pairwise mApping Format .paf)
  type: File?
  inputBinding:
    prefix: -x
- id: in_y
  doc: file [1 vs. 3] (cross_match .rep or Pairwise mApping Format .paf)
  type: File?
  inputBinding:
    prefix: -y
- id: in_z
  doc: file [3 vs. 2] (cross_match .rep or Pairwise mApping Format .paf)
  type: File?
  inputBinding:
    prefix: -z
- id: in_q
  doc: text file 1 (format NAME:LENGTH)
  type: long?
  inputBinding:
    prefix: -q
- id: in_r
  doc: text file 2 (format NAME:LENGTH)
  type: long?
  inputBinding:
    prefix: -r
- id: in_s
  doc: text file 3 (format NAME:LENGTH)
  type: long?
  inputBinding:
    prefix: -s
- id: in_d
  doc: (eg. exons) coordinates GFF tsv file 1 (start end) - optional
  type: File?
  inputBinding:
    prefix: -d
- id: in_e
  doc: (eg. exons) coordinates GFF tsv file 2 (start end) - optional
  type: File?
  inputBinding:
    prefix: -e
- id: in_f
  doc: (eg. exons) coordinates GFF tsv file 3 (start end) - optional
  type: File?
  inputBinding:
    prefix: -f
- id: in_identity_threshold_eg
  doc: identity threshold (e.g. -i 90 will show colinear blocks >= 90% sequence identity)
  type: long?
  inputBinding:
    prefix: -i
- id: in_length_bp_display
  doc: length (bp) of similarity block to display
  type: long?
  inputBinding:
    prefix: -b
- id: in_pixel_basepair_scale
  doc: (pixel to basepair scale, for displaying the image)
  type: string?
  inputBinding:
    prefix: -c
- id: in_value_transparent_solid
  doc: value, from 0 (transparent) to 1 (solid, default)
  type: long?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- xmatchview-hive.py
