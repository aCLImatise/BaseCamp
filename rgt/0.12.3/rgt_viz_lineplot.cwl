class: CommandLineTool
id: rgt_viz_lineplot.cwl
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
  type: string
  inputBinding:
    prefix: -o
- id: ga
  doc: Use genetic annotation data as input regions (e.g. TSS, TTS, exons and introns)
    instead of the BED files in the input matrix.
  type: boolean
  inputBinding:
    prefix: -ga
- id: t
  doc: 'The title shown on the top of the plot and also the folder name. (default:
    lineplot)'
  type: boolean
  inputBinding:
    prefix: -t
- id: center
  doc: 'Define the center to calculate coverage on the regions. Options are: midpoint,
    bothends, upstream, downstream. (default: midpoint) The bothend mode will flap
    the right end region for calculation.'
  type: boolean
  inputBinding:
    prefix: -center
- id: g
  doc: "Group the data by reads(needs 'factor' column), regions(needs 'factor' column),\
    \ another name of column (for example, 'cell')in the header of experimental matrix,\
    \ or None. (default: None)"
  type: boolean
  inputBinding:
    prefix: -g
- id: row
  doc: "Group the data in rows by reads(needs 'factor' column), regions(needs 'factor'\
    \ column), another name of column (for example, 'cell')in the header of experimental\
    \ matrix, or None. (default: None)"
  type: boolean
  inputBinding:
    prefix: -row
- id: col
  doc: "Group the data in columns by reads(needs 'factor' column), regions(needs 'factor'\
    \ column), another name of column (for example, 'cell')in the header of experimental\
    \ matrix, or None. (default: regions)"
  type: boolean
  inputBinding:
    prefix: -col
- id: c
  doc: "Color the data by reads(needs 'factor' column), regions(needs 'factor' column),\
    \ another name of column (for example, 'cell')in the header of experimental matrix,\
    \ or None. (default: reads)"
  type: boolean
  inputBinding:
    prefix: -c
- id: e
  doc: 'Define the extend length of interested region for plotting. (default: 2000)'
  type: boolean
  inputBinding:
    prefix: -e
- id: rs
  doc: 'Define the readsize for calculating coverage. (default: 200)'
  type: boolean
  inputBinding:
    prefix: -rs
- id: ss
  doc: 'Define the stepsize for calculating coverage. (default: 50)'
  type: boolean
  inputBinding:
    prefix: -ss
- id: bs
  doc: 'Define the binsize for calculating coverage. (default: 100)'
  type: boolean
  inputBinding:
    prefix: -bs
- id: log
  doc: 'Take log for the value before calculating average. (default: False)'
  type: boolean
  inputBinding:
    prefix: -log
- id: scol
  doc: 'Share y axis among columns. (default: False)'
  type: boolean
  inputBinding:
    prefix: -scol
- id: s_row
  doc: 'Share y axis among rows. (default: False)'
  type: boolean
  inputBinding:
    prefix: -srow
- id: organism
  doc: 'Define the organism. (default: None)'
  type: boolean
  inputBinding:
    prefix: -organism
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
- id: test
  doc: 'Sample only the first 10 regions in all BED files for testing. (default: False)'
  type: boolean
  inputBinding:
    prefix: -test
- id: mp
  doc: 'Perform multiprocessing for faster computation. (default: 0)'
  type: boolean
  inputBinding:
    prefix: -mp
- id: df
  doc: 'Show the difference of the two signals which share the same labels.The result
    is the subtraction of the first to the second. (default: False)'
  type: boolean
  inputBinding:
    prefix: -df
- id: dft
  doc: 'Add one more tag for calculating difference. (default: None)'
  type: boolean
  inputBinding:
    prefix: -dft
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
- id: sense
  doc: 'Set the plot sense-specific. (default: False)'
  type: boolean
  inputBinding:
    prefix: -sense
- id: strand
  doc: 'Set the plot strand-specific. (default: False)'
  type: boolean
  inputBinding:
    prefix: -strand
- id: average
  doc: 'Show only the average of the replicates. (default: False)'
  type: boolean
  inputBinding:
    prefix: -average
- id: flip_negative
  doc: 'Flip the negative strand (default: False)'
  type: boolean
  inputBinding:
    prefix: -flip_negative
- id: extend_outside
  doc: 'Extend the window outside of the given regions and compress the given region
    into fixed internal. (default: False)'
  type: boolean
  inputBinding:
    prefix: -extend_outside
- id: add_region_number
  doc: 'Add the number of regions in the axis label. (default: False)'
  type: boolean
  inputBinding:
    prefix: -add_region_number
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-viz
- lineplot
