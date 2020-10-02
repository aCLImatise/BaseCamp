class: CommandLineTool
id: rgt_viz_lineplot.cwl
inputs:
- id: in_directory_name_output
  doc: "The directory name for the output files. For example,\nproject name. (default:\
    \ None)"
  type: Directory
  inputBinding:
    prefix: -o
- id: in_ga
  doc: "Use genetic annotation data as input regions (e.g. TSS,\nTTS, exons and introns)\
    \ instead of the BED files in the\ninput matrix."
  type: boolean
  inputBinding:
    prefix: -ga
- id: in_title_shown_thefolder
  doc: "The title shown on the top of the plot and also the\nfolder name. (default:\
    \ lineplot)"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_center
  doc: "Define the center to calculate coverage on the regions.\nOptions are: midpoint,\
    \ bothends, upstream, downstream.\n(default: midpoint) The bothend mode will flap\
    \ the right\nend region for calculation."
  type: boolean
  inputBinding:
    prefix: -center
- id: in_group_data_readsneeds
  doc: "Group the data by reads(needs 'factor' column),\nregions(needs 'factor' column),\
    \ another name of column\n(for example, 'cell')in the header of experimental\n\
    matrix, or None. (default: None)"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_row
  doc: "Group the data in rows by reads(needs 'factor' column),\nregions(needs 'factor'\
    \ column), another name of column\n(for example, 'cell')in the header of experimental\n\
    matrix, or None. (default: None)"
  type: boolean
  inputBinding:
    prefix: -row
- id: in_col
  doc: "Group the data in columns by reads(needs 'factor'\ncolumn), regions(needs\
    \ 'factor' column), another name of\ncolumn (for example, 'cell')in the header\
    \ of\nexperimental matrix, or None. (default: regions)"
  type: boolean
  inputBinding:
    prefix: -col
- id: in_color_data_readsneeds
  doc: "Color the data by reads(needs 'factor' column),\nregions(needs 'factor' column),\
    \ another name of column\n(for example, 'cell')in the header of experimental\n\
    matrix, or None. (default: reads)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_define_extend_length
  doc: "Define the extend length of interested region for\nplotting. (default: 2000)"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_rs
  doc: "Define the readsize for calculating coverage. (default:\n200)"
  type: boolean
  inputBinding:
    prefix: -rs
- id: in_ss
  doc: "Define the stepsize for calculating coverage. (default:\n50)"
  type: boolean
  inputBinding:
    prefix: -ss
- id: in_bs
  doc: "Define the binsize for calculating coverage. (default:\n100)"
  type: boolean
  inputBinding:
    prefix: -bs
- id: in_log
  doc: "Take log for the value before calculating average.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: -log
- id: in_scol
  doc: 'Share y axis among columns. (default: False)'
  type: boolean
  inputBinding:
    prefix: -scol
- id: in_s_row
  doc: 'Share y axis among rows. (default: False)'
  type: boolean
  inputBinding:
    prefix: -srow
- id: in_organism
  doc: 'Define the organism. (default: None)'
  type: boolean
  inputBinding:
    prefix: -organism
- id: in_color
  doc: "Define the specific colors with the given column \"color\"\nin experimental\
    \ matrix. The color should be in the\nformat of matplotlib.colors. For example,\
    \ \"r\" for red,\n\"b\" for blue, or \"(100, 35, 138)\" for RGB. (default:\nFalse)"
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
- id: in_test
  doc: "Sample only the first 10 regions in all BED files for\ntesting. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: -test
- id: in_mp
  doc: "Perform multiprocessing for faster computation.\n(default: 0)"
  type: boolean
  inputBinding:
    prefix: -mp
- id: in_df
  doc: "Show the difference of the two signals which share the\nsame labels.The result\
    \ is the subtraction of the first\nto the second. (default: False)"
  type: boolean
  inputBinding:
    prefix: -df
- id: in_dft
  doc: "Add one more tag for calculating difference. (default:\nNone)"
  type: boolean
  inputBinding:
    prefix: -dft
- id: in_show
  doc: 'Show the figure in the screen. (default: False)'
  type: boolean
  inputBinding:
    prefix: -show
- id: in_table
  doc: "Store the tables of the figure in text format. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: -table
- id: in_sense
  doc: 'Set the plot sense-specific. (default: False)'
  type: boolean
  inputBinding:
    prefix: -sense
- id: in_strand
  doc: 'Set the plot strand-specific. (default: False)'
  type: boolean
  inputBinding:
    prefix: -strand
- id: in_average
  doc: "Show only the average of the replicates. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: -average
- id: in_flip_negative
  doc: 'Flip the negative strand (default: False)'
  type: boolean
  inputBinding:
    prefix: -flip_negative
- id: in_extend_outside
  doc: "Extend the window outside of the given regions and\ncompress the given region\
    \ into fixed internal. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: -extend_outside
- id: in_add_region_number
  doc: "Add the number of regions in the axis label. (default:\nFalse)\n"
  type: boolean
  inputBinding:
    prefix: -add_region_number
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_name_output
  doc: "The directory name for the output files. For example,\nproject name. (default:\
    \ None)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_name_output)
cwlVersion: v1.1
baseCommand:
- rgt-viz
- lineplot
