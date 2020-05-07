class: CommandLineTool
id: rgt_viz_boxplot.cwl
inputs:
- id: input
  doc: 'The file name of the input Experimental Matrix file. Recommended to add more
    columns for more information for ploting. For example, cell type or factors. (default:
    None)'
  type: string
  inputBinding:
    position: 0
- id: o
  doc: 'The directory name for the output files. For example, project name. (default:
    None)'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: 'The title shown on the top of the plot and also the folder name. (default:
    boxplot)'
  type: boolean
  inputBinding:
    prefix: -t
- id: g
  doc: "Group the data by reads(needs 'factor' column), regions(needs 'factor' column),\
    \ another name of column (for example, 'cell')in the header of experimental matrix,\
    \ or None. (default: reads)"
  type: boolean
  inputBinding:
    prefix: -g
- id: c
  doc: "Color the data by reads(needs 'factor' column), regions(needs 'factor' column),\
    \ another name of column (for example, 'cell')in the header of experimental matrix,\
    \ or None. (default: regions)"
  type: boolean
  inputBinding:
    prefix: -c
- id: s
  doc: "Sort the data by reads(needs 'factor' column), regions(needs 'factor' column),\
    \ another name of column (for example, 'cell')in the header of experimental matrix,\
    \ or None. (default: None)"
  type: boolean
  inputBinding:
    prefix: -s
- id: scol
  doc: 'Share y axis among columns. (default: False)'
  type: boolean
  inputBinding:
    prefix: -scol
- id: n_log
  doc: 'Set y axis of the plot not in log scale. (default: True)'
  type: boolean
  inputBinding:
    prefix: -nlog
- id: color
  doc: 'Define the specific colors with the given column "color" in experimental matrix.
    The color should be in the format of matplotlib.colors. For example, "r" for red,
    "b" for blue, or "(100, 35, 138)" for RGB. (default: False)'
  type: boolean
  inputBinding:
    prefix: -color
- id: pw
  doc: 'Define the width of single panel. (default: 3)'
  type: boolean
  inputBinding:
    prefix: -pw
- id: ph
  doc: 'Define the height of single panel. (default: 3)'
  type: boolean
  inputBinding:
    prefix: -ph
- id: nq_n
  doc: 'No quantile normalization in calculation. (default: False)'
  type: boolean
  inputBinding:
    prefix: -nqn
- id: df
  doc: 'Show the difference of the two signals which share the same labels.The result
    is the subtraction of the first to the second. (default: False)'
  type: boolean
  inputBinding:
    prefix: -df
- id: ylim
  doc: 'Define the limit of y axis. (default: None)'
  type: boolean
  inputBinding:
    prefix: -ylim
- id: p
  doc: 'Define the significance level for multiple test. (default: 0.05)'
  type: boolean
  inputBinding:
    prefix: -p
- id: show
  doc: 'Show the figure in the screen. (default: False)'
  type: boolean
  inputBinding:
    prefix: -show
- id: table
  doc: 'Store the tables of the figure in text format. (default: False)'
  type: boolean
  inputBinding:
    prefix: -table
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-viz
- boxplot
