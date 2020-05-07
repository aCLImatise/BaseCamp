class: CommandLineTool
id: bohra_check.cwl
inputs:
- id: kraken_db
  doc: 'Path to DB for use with kraken2, if no DB present speciation will not be performed.
    [env var: KRAKEN2_DEFAULT_DB]'
  type: string
  inputBinding:
    prefix: --kraken_db
outputs: []
cwlVersion: v1.1
baseCommand:
- bohra
- check
