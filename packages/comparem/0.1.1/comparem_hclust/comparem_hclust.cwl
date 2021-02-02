class: CommandLineTool
id: comparem_hclust.cwl
inputs:
- id: in_method
  doc: 'clustering method to use. (default: average)'
  type: string
  inputBinding:
    prefix: --method
- id: in_similarity
  doc: indicates file contain similarity values
  type: boolean
  inputBinding:
    prefix: --similarity
- id: in_max_sim_value
  doc: 'maximum similarity value (default: 100)'
  type: long
  inputBinding:
    prefix: --max_sim_value
- id: in_name_col_one
  doc: 'index of first column with genome names (default: 0)'
  type: long
  inputBinding:
    prefix: --name_col1
- id: in_name_col_two
  doc: 'index of second column with genome names (default: 1)'
  type: long
  inputBinding:
    prefix: --name_col2
- id: in_value_col
  doc: "index of column with similarity or dissimilarity\nvalues (default: 2)"
  type: long
  inputBinding:
    prefix: --value_col
- id: in_silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_pairwise_value_file
  doc: "file with pairwise similarity or dissimilarity values\nbetween genomes"
  type: string
  inputBinding:
    position: 0
- id: in_output_tree
  doc: name for output hierarchical cluster tree
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- comparem
- hclust
