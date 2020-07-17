class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rgt_viz_venn.cwl
inputs:
- id: s_one
  doc: Define the file for gene set 1 (BED or gene list)
  type: boolean
  inputBinding:
    prefix: -s1
- id: s_two
  doc: Define the file for gene set 2 (BED or gene list)
  type: boolean
  inputBinding:
    prefix: -s2
- id: s_three
  doc: Define the file for gene set 3 (BED or gene list)
  type: boolean
  inputBinding:
    prefix: -s3
- id: s_four
  doc: Define the file for gene set 3 (BED or gene list)
  type: boolean
  inputBinding:
    prefix: -s4
- id: lone
  doc: Define label on venn diagram for set 1
  type: boolean
  inputBinding:
    prefix: -l1
- id: l_two
  doc: Define label on venn diagram for set 2
  type: boolean
  inputBinding:
    prefix: -l2
- id: l_three
  doc: Define label on venn diagram for set 3
  type: boolean
  inputBinding:
    prefix: -l3
- id: l_four
  doc: Define label on venn diagram for set 4
  type: boolean
  inputBinding:
    prefix: -l4
- id: directory_name_output
  doc: 'The directory name for the output files. For example, project name. (default:
    None)'
  type: boolean
  inputBinding:
    prefix: -o
- id: title_shown_top
  doc: 'The title shown on the top of the plot and also the folder name. (default:
    venn_diagram)'
  type: boolean
  inputBinding:
    prefix: -t
- id: organism
  doc: Define the organism.
  type: boolean
  inputBinding:
    prefix: -organism
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-viz
- venn
