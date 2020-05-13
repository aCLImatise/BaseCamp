class: CommandLineTool
id: wig2hints.pl.cwl
inputs:
- id: width
  doc: 'Default: 40'
  type: string
  inputBinding:
    prefix: --width
- id: margin
  doc: 'Default: 20'
  type: string
  inputBinding:
    prefix: --margin
- id: min_thresh
  doc: 'Default: 0.4 horizontal cutoff for determining intervals'
  type: string
  inputBinding:
    prefix: --minthresh
- id: min_score
  doc: 'Default: 0.4 consider only intervals with an average score at least this high'
  type: string
  inputBinding:
    prefix: --minscore
- id: type
  doc: 'Default: print this in the third column (default:"CDSpart")'
  type: string
  inputBinding:
    prefix: --type
- id: pri
  doc: print priority n in last column
  type: string
  inputBinding:
    prefix: --pri
- id: radius
  doc: length of hint interval is 2*radius+1
  type: string
  inputBinding:
    prefix: --radius
- id: strand
  doc: 'Default: "." print this in the strand column'
  type: string
  inputBinding:
    prefix: --strand
- id: prune
  doc: 'Default: 0 (off). Remove boundary areas that have coverage less than f*100%
    of the average over the island'
  type: string
  inputBinding:
    prefix: --prune
- id: src
  doc: 'Default: "X" print src=s in the last column'
  type: string
  inputBinding:
    prefix: --src
- id: ucsc
  doc: Filename for track of UCSC genome browser custom track
  type: string
  inputBinding:
    prefix: --UCSC
outputs: []
cwlVersion: v1.1
baseCommand:
- wig2hints.pl
