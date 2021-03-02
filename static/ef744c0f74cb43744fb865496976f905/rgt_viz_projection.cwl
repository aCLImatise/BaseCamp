class: CommandLineTool
id: rgt_viz_projection.cwl
inputs:
- id: in_file_name_multiplereferences
  doc: "The file name of the reference Experimental Matrix. Multiple\nreferences are\
    \ acceptable. (default: None)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_file_name_query
  doc: "The file name of the query Experimental Matrix. Multiple\nqueries are acceptable.\
    \ (default: None)"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_directory_name_output
  doc: "The directory name for the output files. For example, project\nname. (default:\
    \ None)"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_title_shown_top
  doc: "The title shown on the top of the plot and also the folder\nname. (default:\
    \ projection_test)"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_group_data_matrix
  doc: "Group the data by any optional column (for example, 'cell') of\nexperimental\
    \ matrix, or None. (default: None)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_color_data_matrix
  doc: "Color the data by any optional column (for example, 'cell') of\nexperimental\
    \ matrix, or None. (default: regions)"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_bg
  doc: "Define a BED file as background. If not defined, the\nbackground is whole\
    \ genome according to the given organism.\n(default: None)"
  type: boolean?
  inputBinding:
    prefix: -bg
- id: in_union
  doc: "Take the union of references as background for binominal test.\n(default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: -union
- id: in_organism
  doc: 'Define the organism. (default: hg19)'
  type: boolean?
  inputBinding:
    prefix: -organism
- id: in_log
  doc: 'Set y axis of the plot in log scale. (default: False)'
  type: boolean?
  inputBinding:
    prefix: -log
- id: in_color
  doc: "Define the specific colors with the given column \"color\" in\nexperimental\
    \ matrix. The color should be in the format of\nmatplotlib.colors. For example,\
    \ \"r\" for red, \"b\" for blue, or\n\"(100, 35, 138)\" for RGB. (default: False)"
  type: boolean?
  inputBinding:
    prefix: -color
- id: in_show
  doc: 'Show the figure in the screen. (default: False)'
  type: boolean?
  inputBinding:
    prefix: -show
- id: in_table
  doc: "Store the tables of the figure in text format. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: -table
- id: in_bed
  doc: "Output BED files for the regions of query which overlap the\nreference. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_pw
  doc: 'Define the width of single panel. (default: 5)'
  type: boolean?
  inputBinding:
    prefix: -pw
- id: in_ph
  doc: 'Define the height of single panel. (default: 3)'
  type: boolean?
  inputBinding:
    prefix: -ph
- id: in_cfp
  doc: 'Define the cutoff of the proportion. (default: 0)'
  type: boolean?
  inputBinding:
    prefix: -cfp
- id: in_load
  doc: "Load the BED files later during processing, which saves memory\nusage when\
    \ dealing with large number of BED files.\n"
  type: boolean?
  inputBinding:
    prefix: -load
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_name_output
  doc: "The directory name for the output files. For example, project\nname. (default:\
    \ None)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_name_output)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-viz
- projection
