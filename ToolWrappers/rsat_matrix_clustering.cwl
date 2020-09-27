class: CommandLineTool
id: rsat_matrix_clustering.cwl
inputs:
- id: in_matrix_clustering
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_computer_dot
  doc: "\e[1mSEE ALSO\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_results_dot
  doc: This label is useful when two motifs for the same TF come from
  type: string
  inputBinding:
    position: 0
- id: in_displayed_dot
  doc: "\e[1m-task tasks\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_step_dot
  doc: Assumes the users already have the description table and
  type: string
  inputBinding:
    position: 0
- id: in_version_dot
  doc: We suggest use this option for a big set of input motifs > 300
  type: string
  inputBinding:
    position: 0
- id: in_motifs_dot
  doc: "\e[1mNOTE:\e[0m By the moment the only a few thresholds can be used with this"
  type: string
  inputBinding:
    position: 1
- id: in_file_dot
  doc: 'NOTE: take into account the input file size'
  type: File
  inputBinding:
    position: 0
- id: in_warning_dot
  doc: This parameter can be useful to prevent submission of excessive
  type: string
  inputBinding:
    position: 0
- id: in_nodes_dot
  doc: "\e[33maverage\e[0m (default)"
  type: string
  inputBinding:
    position: 0
- id: in_clustering_dot
  doc: 'Supported metrics : cor, Ncor, dEucl, NdEucl, logocor, logoDP,'
  type: string
  inputBinding:
    position: 0
- id: in_html_dot
  doc: The hierarchical tree in JSON format is always exported, since
  type: string
  inputBinding:
    position: 0
- id: in_cluster_dot
  doc: This option is useful when the user wants to explore the data
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- matrix-clustering
