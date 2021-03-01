class: CommandLineTool
id: rgt_viz_jaccard.cwl
inputs:
- id: in_directory_name_output
  doc: "The directory name for the output files. For example,\nproject name. (default:\
    \ None)"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_file_name_reference
  doc: "The file name of the reference Experimental Matrix.\nMultiple references are\
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
- id: in_title_shown_thefolder
  doc: "The title shown on the top of the plot and also the\nfolder name. (default:\
    \ jaccard_test)"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_rt
  doc: "Define how many times to run the randomization.\n(default: 500)"
  type: boolean?
  inputBinding:
    prefix: -rt
- id: in_group_data_none
  doc: "Group the data by any optional column (for example,\n'cell') of experimental\
    \ matrix, or None. (default: None)"
  type: string?
  inputBinding:
    prefix: -g
- id: in_color_data_optional
  doc: "Color the data by any optional column (for example,\n'cell') of experimental\
    \ matrix, or None. (default:\nregions)"
  type: string?
  inputBinding:
    prefix: -c
- id: in_organism
  doc: 'Define the organism. (default: hg19)'
  type: long?
  inputBinding:
    prefix: -organism
- id: in_n_log
  doc: 'Set y axis of the plot not in log scale. (default: True)'
  type: boolean?
  inputBinding:
    prefix: -nlog
- id: in_color
  doc: "Define the specific colors with the given column \"color\"\nin experimental\
    \ matrix. The color should be in the\nformat of matplotlib.colors. For example,\
    \ \"r\" for red,\n\"b\" for blue, or \"(100, 35, 138)\" for RGB. (default:\nFalse)"
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
- id: in_pw
  doc: 'Define the width of single panel. (default: 3)'
  type: boolean?
  inputBinding:
    prefix: -pw
- id: in_ph
  doc: 'Define the height of single panel. (default: 3)'
  type: boolean?
  inputBinding:
    prefix: -ph
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_name_output
  doc: "The directory name for the output files. For example,\nproject name. (default:\
    \ None)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_name_output)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-viz
- jaccard
