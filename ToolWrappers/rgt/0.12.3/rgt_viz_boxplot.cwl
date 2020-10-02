class: CommandLineTool
id: rgt_viz_boxplot.cwl
inputs:
- id: in_directory_name_output
  doc: "The directory name for the output files. For example, project\nname. (default:\
    \ None)"
  type: Directory
  inputBinding:
    prefix: -o
- id: in_title_shown_top
  doc: "The title shown on the top of the plot and also the folder name.\n(default:\
    \ boxplot)"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_group_data_readsneeds
  doc: "Group the data by reads(needs 'factor' column), regions(needs\n'factor' column),\
    \ another name of column (for example, 'cell')in\nthe header of experimental matrix,\
    \ or None. (default: reads)"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_color_data_readsneeds
  doc: "Color the data by reads(needs 'factor' column), regions(needs\n'factor' column),\
    \ another name of column (for example, 'cell')in\nthe header of experimental matrix,\
    \ or None. (default: regions)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_sort_data_readsneeds
  doc: "Sort the data by reads(needs 'factor' column), regions(needs\n'factor' column),\
    \ another name of column (for example, 'cell')in\nthe header of experimental matrix,\
    \ or None. (default: None)"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_scol
  doc: 'Share y axis among columns. (default: False)'
  type: boolean
  inputBinding:
    prefix: -scol
- id: in_n_log
  doc: 'Set y axis of the plot not in log scale. (default: True)'
  type: boolean
  inputBinding:
    prefix: -nlog
- id: in_color
  doc: "Define the specific colors with the given column \"color\" in\nexperimental\
    \ matrix. The color should be in the format of\nmatplotlib.colors. For example,\
    \ \"r\" for red, \"b\" for blue, or\n\"(100, 35, 138)\" for RGB. (default: False)"
  type: boolean
  inputBinding:
    prefix: -color
- id: in_pw
  doc: 'Define the width of single panel. (default: 3)'
  type: boolean
  inputBinding:
    prefix: -pw
- id: in_ph
  doc: 'Define the height of single panel. (default: 3)'
  type: boolean
  inputBinding:
    prefix: -ph
- id: in_nq_n
  doc: 'No quantile normalization in calculation. (default: False)'
  type: boolean
  inputBinding:
    prefix: -nqn
- id: in_df
  doc: "Show the difference of the two signals which share the same\nlabels.The result\
    \ is the subtraction of the first to the second.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: -df
- id: in_ylim
  doc: 'Define the limit of y axis. (default: None)'
  type: boolean
  inputBinding:
    prefix: -ylim
- id: in_define_significance_level
  doc: 'Define the significance level for multiple test. (default: 0.05)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_show
  doc: 'Show the figure in the screen. (default: False)'
  type: boolean
  inputBinding:
    prefix: -show
- id: in_table
  doc: 'Store the tables of the figure in text format. (default: False)'
  type: boolean
  inputBinding:
    prefix: -table
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
- boxplot
