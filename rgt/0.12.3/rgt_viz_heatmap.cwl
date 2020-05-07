class: CommandLineTool
id: rgt_viz_heatmap.cwl
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
- id: ga
  doc: 'Use genetic annotation data as input regions (e.g. TSS, TTS, exons and introns)
    instead of the BED files in the input matrix. (default: False)'
  type: boolean
  inputBinding:
    prefix: -ga
- id: t
  doc: 'The title shown on the top of the plot and also the folder name. (default:
    heatmap)'
  type: boolean
  inputBinding:
    prefix: -t
- id: center
  doc: 'Define the center to calculate coverage on the regions. Options are: midpoint,
    bothends, upstream, downstream.(Default:midpoint) The bothend mode will flap the
    right end region for calculation. (default: midpoint)'
  type: boolean
  inputBinding:
    prefix: -center
- id: sort
  doc: 'Define the way to sort the signals.Default is no sorting at all, the signals
    arrange in the order of their position; "0" is sorting by the average ranking
    of all signals; "1" is sorting by the ranking of 1st column; "2" is 2nd and so
    on... (default: None)'
  type: boolean
  inputBinding:
    prefix: -sort
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
- id: row
  doc: "Group the data in rows by reads(needs 'factor' column), regions(needs 'factor'\
    \ column), another name of column (for example, 'cell')in the header of experimental\
    \ matrix, or None. (default: None)"
  type: boolean
  inputBinding:
    prefix: -row
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
- id: organism
  doc: 'Define the organism. (default: hg19)'
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
- id: log
  doc: 'Set colorbar in log scale. (default: False)'
  type: boolean
  inputBinding:
    prefix: -log
- id: mp
  doc: 'Perform multiprocessing for faster computation. (default: False)'
  type: boolean
  inputBinding:
    prefix: -mp
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
- heatmap
