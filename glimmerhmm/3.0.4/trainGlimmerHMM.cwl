class: CommandLineTool
id: trainGlimmerHMM.cwl
inputs:
- id: i
  doc: ',i2,...,in  isochores to be considered (e.g. if two isochores are desired
    between  0-40% GC content and 40-100% then the option should be: -i 0,40,100;  default
    is -i 0,100 )'
  type: string
  inputBinding:
    prefix: -i
- id: d
  doc: name = name of training directory
  type: string
  inputBinding:
    prefix: -d
- id: f
  doc: val = average value of upstream UTR region if known
  type: string
  inputBinding:
    prefix: -f
- id: l
  doc: 'val = average value of downstream UTR region if known                '
  type: string
  inputBinding:
    prefix: -l
- id: n
  doc: val = average value of intergenic region if known
  type: string
  inputBinding:
    prefix: -n
- id: v
  doc: val = value of flanking region around genes (default=200)
  type: string
  inputBinding:
    prefix: -v
- id: b
  doc: val = build 1st or 2nd order markov model (default=1)
  type: string
  inputBinding:
    prefix: -b
- id: t
  doc: val = 1 when constructing decision trees from false.* files (default=0)
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- trainGlimmerHMM
