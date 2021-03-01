class: CommandLineTool
id: wig2hints.pl.cwl
inputs:
- id: in_width
  doc: 'Default: 40'
  type: long?
  inputBinding:
    prefix: --width
- id: in_margin
  doc: 'Default: 20'
  type: long?
  inputBinding:
    prefix: --margin
- id: in_min_thresh
  doc: 'Default: 0.4 horizontal cutoff for determining intervals'
  type: double?
  inputBinding:
    prefix: --minthresh
- id: in_min_score
  doc: 'Default: 0.4 consider only intervals with an average score at least this high'
  type: double?
  inputBinding:
    prefix: --minscore
- id: in_type
  doc: 'Default: print this in the third column (default:"CDSpart")'
  type: string?
  inputBinding:
    prefix: --type
- id: in_pri
  doc: print priority n in last column
  type: string?
  inputBinding:
    prefix: --pri
- id: in_radius
  doc: length of hint interval is 2*radius+1
  type: long?
  inputBinding:
    prefix: --radius
- id: in_strand
  doc: 'Default: "." print this in the strand column'
  type: string?
  inputBinding:
    prefix: --strand
- id: in_prune
  doc: 'Default: 0 (off). Remove boundary areas that have coverage less than f*100%
    of the average over the island'
  type: long?
  inputBinding:
    prefix: --prune
- id: in_src
  doc: 'Default: "X" print src=s in the last column'
  type: string?
  inputBinding:
    prefix: --src
- id: in_ucsc
  doc: Filename for track of UCSC genome browser custom track
  type: File?
  inputBinding:
    prefix: --UCSC
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- wig2hints.pl
