class: CommandLineTool
id: rgt_viz_jaccard.cwl
inputs:
- id: o
  doc: 'The directory name for the output files. For example, project name. (default:
    None)'
  type: string
  inputBinding:
    prefix: -o
- id: r
  doc: 'The file name of the reference Experimental Matrix. Multiple references are
    acceptable. (default: None)'
  type: boolean
  inputBinding:
    prefix: -r
- id: q
  doc: 'The file name of the query Experimental Matrix. Multiple queries are acceptable.
    (default: None)'
  type: boolean
  inputBinding:
    prefix: -q
- id: t
  doc: 'The title shown on the top of the plot and also the folder name. (default:
    jaccard_test)'
  type: boolean
  inputBinding:
    prefix: -t
- id: rt
  doc: 'Define how many times to run the randomization. (default: 500)'
  type: boolean
  inputBinding:
    prefix: -rt
- id: g
  doc: "Group the data by any optional column (for example, 'cell') of experimental\
    \ matrix, or None. (default: None)"
  type: string
  inputBinding:
    prefix: -g
- id: c
  doc: "Color the data by any optional column (for example, 'cell') of experimental\
    \ matrix, or None. (default: regions)"
  type: string
  inputBinding:
    prefix: -c
- id: organism
  doc: 'Define the organism. (default: hg19)'
  type: string
  inputBinding:
    prefix: -organism
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
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-viz
- jaccard
