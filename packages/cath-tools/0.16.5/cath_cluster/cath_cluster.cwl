class: CommandLineTool
id: cath_cluster.cwl
inputs:
- id: in_output_version_information
  doc: '[ --version ]              Output version information'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_link_dir_n
  doc: "Interpret each link value as <dirn>, one of:\nDISTANCE - A higher value means\
    \ the corresponding two entries are more distant\nSTRENGTH - A higher value means\
    \ the corresponding tow entries are more connected"
  type: string
  inputBinding:
    prefix: --link-dirn
- id: in_column_idx
  doc: "(=3)    Parse the link values (distances/strengths) from column number <colnum>\n\
    Must be ≥ 3 because columns 1 and 2 must contain the IDs"
  type: long
  inputBinding:
    prefix: --column-idx
- id: in_names_in_file
  doc: "[RECOMMENDED] Read names and sorting scores from file <file> (or '-' for stdin)"
  type: File
  inputBinding:
    prefix: --names-infile
- id: in_levels
  doc: Cluster at levels <levels>, which is ordered values separated by commas (eg
    35,60,95,100)
  type: long
  inputBinding:
    prefix: --levels
- id: in_clusters_to_file
  doc: Write the clustering to file <file> (or '-' for stdout)
  type: File
  inputBinding:
    prefix: --clusters-to-file
- id: in_merges_to_file
  doc: Write the ordered list of merges to file <file> (or '-' for stdout)
  type: File
  inputBinding:
    prefix: --merges-to-file
- id: in_clust_spans_to_file
  doc: Write links that form spanning trees for each cluster to file <file> (or '-'
    for stdout)
  type: File
  inputBinding:
    prefix: --clust-spans-to-file
- id: in_reps_to_file
  doc: Write the list of representatives to file <file> (or '-' for stdout)
  type: File
  inputBinding:
    prefix: --reps-to-file
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cath-cluster
