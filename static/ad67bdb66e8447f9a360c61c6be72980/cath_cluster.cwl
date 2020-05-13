class: CommandLineTool
id: cath_cluster.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: v
  doc: '[ --version ]              Output version information'
  type: boolean
  inputBinding:
    prefix: -v
- id: link_dir_n
  doc: 'Interpret each link value as <dirn>, one of: DISTANCE - A higher value means
    the corresponding two entries are more distant STRENGTH - A higher value means
    the corresponding tow entries are more connected'
  type: string
  inputBinding:
    prefix: --link-dirn
- id: column_idx
  doc: (=3)    Parse the link values (distances/strengths) from column number <colnum>
    Must be ≥ 3 because columns 1 and 2 must contain the IDs
  type: string
  inputBinding:
    prefix: --column-idx
- id: names_in_file
  doc: "[RECOMMENDED] Read names and sorting scores from file <file> (or '-' for stdin)"
  type: File
  inputBinding:
    prefix: --names-infile
- id: levels
  doc: Cluster at levels <levels>, which is ordered values separated by commas (eg
    35,60,95,100)
  type: string
  inputBinding:
    prefix: --levels
- id: clusters_to_file
  doc: Write the clustering to file <file> (or '-' for stdout)
  type: File
  inputBinding:
    prefix: --clusters-to-file
- id: merges_to_file
  doc: Write the ordered list of merges to file <file> (or '-' for stdout)
  type: File
  inputBinding:
    prefix: --merges-to-file
- id: clust_spans_to_file
  doc: Write links that form spanning trees for each cluster to file <file> (or '-'
    for stdout)
  type: File
  inputBinding:
    prefix: --clust-spans-to-file
- id: reps_to_file
  doc: Write the list of representatives to file <file> (or '-' for stdout)
  type: File
  inputBinding:
    prefix: --reps-to-file
outputs: []
cwlVersion: v1.1
baseCommand:
- cath-cluster
