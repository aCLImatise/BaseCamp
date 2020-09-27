class: CommandLineTool
id: lyner_cluster.cwl
inputs:
- id: in_method
  doc: "[dbscan|k_means|mean_shift]\n-n, --num-clusters INTEGER      The exact number\
    \ of clusters to build.\n-c, --mode-config DICT\n--help                      \
    \    Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --method
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- cluster
