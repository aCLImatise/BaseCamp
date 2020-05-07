class: CommandLineTool
id: nucleosome_prediction.pl.bak.cwl
inputs:
- id: raw_binding
  doc: ': Output the raw nucleosome binding log-ratio per basepair instead of the
    default average occupancy probabilities.'
  type: boolean
  inputBinding:
    prefix: -raw_binding
- id: t
  doc: ':    Title.'
  type: string
  inputBinding:
    prefix: -t
- id: s
  doc: ':    Sequence file (fasta format).'
  type: string
  inputBinding:
    prefix: -s
- id: c
  doc: ':    Nucleosomes concentration (default: 0.1).'
  type: string
  inputBinding:
    prefix: -c
- id: temp
  doc: ': (Inverse) Temperature scaling (default: 1).'
  type: string
  inputBinding:
    prefix: -temp
- id: p
  doc: ':    Prefix of output files to use (default: the process id).'
  type: string
  inputBinding:
    prefix: -p
- id: tab
  doc: ':        Produce a tab delimited output file (otherwise, print output to STDOUT).'
  type: boolean
  inputBinding:
    prefix: -tab
- id: gxp
  doc: ':        Produce a gxp (Genomica project file) output file.'
  type: boolean
  inputBinding:
    prefix: -gxp
outputs: []
cwlVersion: v1.1
baseCommand:
- nucleosome_prediction.pl.bak
