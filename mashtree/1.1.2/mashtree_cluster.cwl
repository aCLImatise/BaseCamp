class: CommandLineTool
id: mashtree_cluster.pl.cwl
inputs:
- id: threshold
  doc: 0.1       Maximum any two genomes can be from the seed in a given cluster
  type: boolean
  inputBinding:
    prefix: --threshold
- id: nonzero
  doc: 1e-99     Zero distance is not tolerated in this script. Give a nonzero value
    in case a zero distance is found.
  type: boolean
  inputBinding:
    prefix: --nonzero
- id: num_cpus
  doc: 1         Not currently used.
  type: boolean
  inputBinding:
    prefix: --numcpus
outputs: []
cwlVersion: v1.1
baseCommand:
- mashtree_cluster.pl
