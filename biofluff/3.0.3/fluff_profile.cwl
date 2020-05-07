class: CommandLineTool
id: fluff_profile.cwl
inputs:
- id: i
  doc: genomic interval (chrom:start-end)
  type: long
  inputBinding:
    prefix: -i
- id: d
  doc: '[FILE [FILE ...]]  data files (reads in BAM or BED format)'
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: output file (type determined by extension)
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: normalize to per million mapped reads
  type: boolean
  inputBinding:
    prefix: -n
- id: a
  doc: annotation in BED12 format
  type: File
  inputBinding:
    prefix: -a
- id: t
  doc: track groups
  type: string
  inputBinding:
    prefix: -t
- id: s
  doc: scale groups
  type: string
  inputBinding:
    prefix: -s
- id: s
  doc: scale, one value or comma-separated values for each track
  type: long
  inputBinding:
    prefix: -S
- id: f
  doc: 'fragment length (default: 200)'
  type: string
  inputBinding:
    prefix: -f
- id: d
  doc: keep duplicate reads (removed by default)
  type: boolean
  inputBinding:
    prefix: -D
- id: r
  doc: keep repeats with mapq 0 (removed by default)
  type: boolean
  inputBinding:
    prefix: -R
- id: r
  doc: reverse
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: (S)            color(s) (name, colorbrewer profile or hex code), separate each
    color name by comma
  type: string
  inputBinding:
    prefix: -c
- id: b
  doc: 'background color: stripes | white | color'
  type: string
  inputBinding:
    prefix: -b
- id: t
  doc: 'text font size(default: 10)'
  type: string
  inputBinding:
    prefix: -T
- id: h
  doc: hide track scale label
  type: boolean
  inputBinding:
    prefix: -H
outputs: []
cwlVersion: v1.1
baseCommand:
- fluff
- profile
