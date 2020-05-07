class: CommandLineTool
id: kissnp2.cwl
inputs:
- id: max_ambigous_in_del
  doc: "(1 arg) :    Maximal size of ambiguity of INDELs. INDELS whose ambiguity is\
    \ higher than this value are not output  [default '20']"
  type: boolean
  inputBinding:
    prefix: -max_ambigous_indel
- id: l
  doc: '(0 arg) :    conserve low complexity SNPs'
  type: boolean
  inputBinding:
    prefix: -l
- id: nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: version
  doc: '(0 arg) :    version'
  type: boolean
  inputBinding:
    prefix: -version
- id: bfs_max_depth
  doc: "(1 arg) :    maximum depth for BFS  [default '200']"
  type: boolean
  inputBinding:
    prefix: -bfs-max-depth
- id: bfs_max_breadth
  doc: "(1 arg) :    maximum breadth for BFS  [default '20']"
  type: boolean
  inputBinding:
    prefix: -bfs-max-breadth
- id: max_truncated_path_length_difference
  doc: "(1 arg) :    Longest accepted difference length between two paths of a truncated\
    \ bubbleS  [default '0']"
  type: boolean
  inputBinding:
    prefix: -max_truncated_path_length_difference
outputs: []
cwlVersion: v1.1
baseCommand:
- kissnp2
