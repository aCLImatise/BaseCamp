class: CommandLineTool
id: lyner_estimate.cwl
inputs:
- id: in_distribution
  doc: "May be any of ['negbinom', 'gamma', 'laisson', 't',\n'norm', 'cauchy', 'lognorm']\
    \ as well as any\ndistribution in `scipy.stats.rv_continuous`."
  type: string
  inputBinding:
    prefix: --distribution
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- estimate
