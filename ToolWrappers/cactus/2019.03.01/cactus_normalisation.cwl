class: CommandLineTool
id: cactus_normalisation.cwl
inputs:
- id: in_loglevel
  doc: ': Set the log level'
  type: boolean
  inputBinding:
    prefix: --logLevel
- id: in_cactus_disk
  doc: ': stKVDatabase conf string for the cactus database'
  type: boolean
  inputBinding:
    prefix: --cactusDisk
- id: in_max_number_of_chains
  doc: ': The maximum number of individual chains to promote into a flower.'
  type: boolean
  inputBinding:
    prefix: --maxNumberOfChains
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cactus_normalisation
