class: CommandLineTool
id: fluff_bandplot.cwl
inputs:
- id: f
  doc: BED file with cluster in 5th column
  type: File
  inputBinding:
    prefix: -f
- id: d
  doc: '[FILE [FILE ...]]  data files (reads in BAM or BED format)'
  type: boolean
  inputBinding:
    prefix: -d
- id: counts
  doc: read counts table (instead of data files)
  type: File
  inputBinding:
    prefix: -counts
- id: o
  doc: output file (type determined by extension)
  type: string
  inputBinding:
    prefix: -o
- id: r
  doc: normalize using RPKM instead of read counts
  type: boolean
  inputBinding:
    prefix: -r
- id: s
  doc: create summary graphs
  type: boolean
  inputBinding:
    prefix: -S
- id: b
  doc: number of bins
  type: long
  inputBinding:
    prefix: -b
- id: f
  doc: 'fragment length (default: read length)'
  type: string
  inputBinding:
    prefix: -F
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
- id: s
  doc: scale groups
  type: string
  inputBinding:
    prefix: -s
- id: p
  doc: ',INT            range of percentiles (default 50,90)'
  type: long
  inputBinding:
    prefix: -p
- id: p
  doc: 'percentile at which to extract score (should be in range [0,100], default:
    99)'
  type: long
  inputBinding:
    prefix: -P
- id: c
  doc: (S)            color(s) (name, colorbrewer profile or hex code), separate each
    color name by comma
  type: string
  inputBinding:
    prefix: -c
- id: t
  doc: 'text font size(default: 10)'
  type: string
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- fluff
- bandplot
