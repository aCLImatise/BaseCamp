class: CommandLineTool
id: rgt_viz_projection.cwl
inputs:
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
- id: o
  doc: 'The directory name for the output files. For example, project name. (default:
    None)'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: 'The title shown on the top of the plot and also the folder name. (default:
    projection_test)'
  type: boolean
  inputBinding:
    prefix: -t
- id: g
  doc: "Group the data by any optional column (for example, 'cell') of experimental\
    \ matrix, or None. (default: None)"
  type: boolean
  inputBinding:
    prefix: -g
- id: c
  doc: "Color the data by any optional column (for example, 'cell') of experimental\
    \ matrix, or None. (default: regions)"
  type: boolean
  inputBinding:
    prefix: -c
- id: bg
  doc: 'Define a BED file as background. If not defined, the background is whole genome
    according to the given organism. (default: None)'
  type: boolean
  inputBinding:
    prefix: -bg
- id: union
  doc: 'Take the union of references as background for binominal test. (default: False)'
  type: boolean
  inputBinding:
    prefix: -union
- id: organism
  doc: 'Define the organism. (default: hg19)'
  type: boolean
  inputBinding:
    prefix: -organism
- id: log
  doc: 'Set y axis of the plot in log scale. (default: False)'
  type: boolean
  inputBinding:
    prefix: -log
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
- id: bed
  doc: 'Output BED files for the regions of query which overlap the reference. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: -bed
- id: pw
  doc: 'Define the width of single panel. (default: 5)'
  type: boolean
  inputBinding:
    prefix: -pw
- id: ph
  doc: 'Define the height of single panel. (default: 3)'
  type: boolean
  inputBinding:
    prefix: -ph
- id: cfp
  doc: 'Define the cutoff of the proportion. (default: 0)'
  type: boolean
  inputBinding:
    prefix: -cfp
- id: load
  doc: Load the BED files later during processing, which saves memory usage when dealing
    with large number of BED files.
  type: boolean
  inputBinding:
    prefix: -load
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-viz
- projection
