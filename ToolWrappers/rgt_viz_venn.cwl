class: CommandLineTool
id: rgt_viz_venn.cwl
inputs:
- id: in_s_one
  doc: Define the file for gene set 1 (BED or gene list)
  type: boolean
  inputBinding:
    prefix: -s1
- id: in_s_two
  doc: Define the file for gene set 2 (BED or gene list)
  type: boolean
  inputBinding:
    prefix: -s2
- id: in_s_three
  doc: Define the file for gene set 3 (BED or gene list)
  type: boolean
  inputBinding:
    prefix: -s3
- id: in_s_four
  doc: Define the file for gene set 3 (BED or gene list)
  type: boolean
  inputBinding:
    prefix: -s4
- id: in_lone
  doc: Define label on venn diagram for set 1
  type: boolean
  inputBinding:
    prefix: -l1
- id: in_l_two
  doc: Define label on venn diagram for set 2
  type: boolean
  inputBinding:
    prefix: -l2
- id: in_l_three
  doc: Define label on venn diagram for set 3
  type: boolean
  inputBinding:
    prefix: -l3
- id: in_l_four
  doc: Define label on venn diagram for set 4
  type: boolean
  inputBinding:
    prefix: -l4
- id: in_directory_name_output
  doc: "The directory name for the output files. For example, project\nname. (default:\
    \ None)"
  type: Directory
  inputBinding:
    prefix: -o
- id: in_title_shown_top
  doc: "The title shown on the top of the plot and also the folder\nname. (default:\
    \ venn_diagram)"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_organism
  doc: Define the organism.
  type: boolean
  inputBinding:
    prefix: -organism
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_name_output
  doc: "The directory name for the output files. For example, project\nname. (default:\
    \ None)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_name_output)
cwlVersion: v1.1
baseCommand:
- rgt-viz
- venn
