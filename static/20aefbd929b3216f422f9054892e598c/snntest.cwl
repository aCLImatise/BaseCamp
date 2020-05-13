class: CommandLineTool
id: snntest.cwl
inputs:
- id: s
  doc: ": data are in the format used for Hudson's (2001) programs"
  type: File
  inputBinding:
    prefix: -s
- id: m
  doc: ': read ms-like data from stdin'
  type: boolean
  inputBinding:
    prefix: -m
- id: c
  doc: 'n_1 n_2 ... n_npop : the number of pops followed by list of sample sizes per
    pop'
  type: string
  inputBinding:
    prefix: -c
- id: o
  doc: ': write data to outfilename (defaults to writing to the screen)'
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: ': get p-values from nperms permutations of the data (default=10000)'
  type: string
  inputBinding:
    prefix: -n
- id: b
  doc: ': only analyze bi-allelic sites (only considers the ingroup!)'
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- snntest
