class: CommandLineTool
id: mashtree_cluster.pl.cwl
inputs:
- id: in_threshold
  doc: "0.1       Maximum any two genomes can be\nfrom the seed in a given cluster"
  type: boolean?
  inputBinding:
    prefix: --threshold
- id: in_nonzero
  doc: "1e-99     Zero distance is not tolerated\nin this script. Give a nonzero\n\
    value in case a zero distance\nis found."
  type: boolean?
  inputBinding:
    prefix: --nonzero
- id: in_num_cpus
  doc: 1         Not currently used.
  type: boolean?
  inputBinding:
    prefix: --numcpus
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mashtree_cluster.pl
