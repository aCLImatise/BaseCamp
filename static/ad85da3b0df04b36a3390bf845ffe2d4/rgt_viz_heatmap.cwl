class: CommandLineTool
id: rgt_viz_heatmap.cwl
inputs:
- id: in_directory_name_output
  doc: "The directory name for the output files. For example, project\nname. (default:\
    \ None)"
  type: Directory
  inputBinding:
    prefix: -o
- id: in_ga
  doc: "Use genetic annotation data as input regions (e.g. TSS, TTS,\nexons and introns)\
    \ instead of the BED files in the input\nmatrix. (default: False)"
  type: boolean
  inputBinding:
    prefix: -ga
- id: in_title_shown_top
  doc: "The title shown on the top of the plot and also the folder\nname. (default:\
    \ heatmap)"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_center
  doc: "Define the center to calculate coverage on the regions.\nOptions are: midpoint,\
    \ bothends, upstream,\ndownstream.(Default:midpoint) The bothend mode will flap\
    \ the\nright end region for calculation. (default: midpoint)"
  type: boolean
  inputBinding:
    prefix: -center
- id: in_sort
  doc: "Define the way to sort the signals.Default is no sorting at\nall, the signals\
    \ arrange in the order of their position; \"0\"\nis sorting by the average ranking\
    \ of all signals; \"1\" is\nsorting by the ranking of 1st column; \"2\" is 2nd\
    \ and so on...\n(default: None)"
  type: boolean
  inputBinding:
    prefix: -sort
- id: in_col
  doc: "Group the data in columns by reads(needs 'factor' column),\nregions(needs\
    \ 'factor' column), another name of column (for\nexample, 'cell')in the header\
    \ of experimental matrix, or None.\n(default: regions)"
  type: boolean
  inputBinding:
    prefix: -col
- id: in_color_data_readsneeds
  doc: "Color the data by reads(needs 'factor' column), regions(needs\n'factor' column),\
    \ another name of column (for example,\n'cell')in the header of experimental matrix,\
    \ or None.\n(default: reads)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_row
  doc: "Group the data in rows by reads(needs 'factor' column),\nregions(needs 'factor'\
    \ column), another name of column (for\nexample, 'cell')in the header of experimental\
    \ matrix, or None.\n(default: None)"
  type: boolean
  inputBinding:
    prefix: -row
- id: in_define_extend_length
  doc: "Define the extend length of interested region for plotting.\n(default: 2000)"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_rs
  doc: 'Define the readsize for calculating coverage. (default: 200)'
  type: boolean
  inputBinding:
    prefix: -rs
- id: in_ss
  doc: 'Define the stepsize for calculating coverage. (default: 50)'
  type: boolean
  inputBinding:
    prefix: -ss
- id: in_bs
  doc: 'Define the binsize for calculating coverage. (default: 100)'
  type: boolean
  inputBinding:
    prefix: -bs
- id: in_organism
  doc: 'Define the organism. (default: hg19)'
  type: boolean
  inputBinding:
    prefix: -organism
- id: in_color
  doc: "Define the specific colors with the given column \"color\" in\nexperimental\
    \ matrix. The color should be in the format of\nmatplotlib.colors. For example,\
    \ \"r\" for red, \"b\" for blue, or\n\"(100, 35, 138)\" for RGB. (default: False)"
  type: boolean
  inputBinding:
    prefix: -color
- id: in_log
  doc: 'Set colorbar in log scale. (default: False)'
  type: boolean
  inputBinding:
    prefix: -log
- id: in_mp
  doc: "Perform multiprocessing for faster computation. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: -mp
- id: in_show
  doc: 'Show the figure in the screen. (default: False)'
  type: boolean
  inputBinding:
    prefix: -show
- id: in_table
  doc: "Store the tables of the figure in text format. (default:\nFalse)\n"
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
- heatmap
