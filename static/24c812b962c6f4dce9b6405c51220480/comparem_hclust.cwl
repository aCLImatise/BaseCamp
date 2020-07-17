class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/comparem_hclust.cwl
inputs:
- id: method
  doc: 'clustering method to use. (default: average)'
  type: string
  inputBinding:
    prefix: --method
- id: similarity
  doc: indicates file contain similarity values
  type: boolean
  inputBinding:
    prefix: --similarity
- id: max_sim_value
  doc: 'maximum similarity value (default: 100)'
  type: long
  inputBinding:
    prefix: --max_sim_value
- id: name_col_one
  doc: 'index of first column with genome names (default: 0)'
  type: string
  inputBinding:
    prefix: --name_col1
- id: name_col_two
  doc: 'index of second column with genome names (default: 1)'
  type: string
  inputBinding:
    prefix: --name_col2
- id: value_col
  doc: 'index of column with similarity or dissimilarity values (default: 2)'
  type: string
  inputBinding:
    prefix: --value_col
- id: silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: pairwise_value_file
  doc: file with pairwise similarity or dissimilarity values between genomes
  type: string
  inputBinding:
    position: 0
- id: output_tree
  doc: name for output hierarchical cluster tree
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- comparem
- hclust
