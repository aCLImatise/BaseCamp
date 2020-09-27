class: CommandLineTool
id: kinPlot.R.cwl
inputs:
- id: in_input_file_header
  doc: "Input file has a header which is used to\nname the state columns."
  type: boolean
  inputBinding:
    prefix: -H
- id: in_use_linear_instead
  doc: Use linear instead of logarithmic time
  type: boolean
  inputBinding:
    prefix: -l
- id: in_cut_plot_reached
  doc: Cut off plot when equilibrium is reached
  type: boolean
  inputBinding:
    prefix: -c
- id: in_opts
  doc: RDS file containing argument values
  type: boolean
  inputBinding:
    prefix: --opts
- id: in_i_file
  doc: "Name(s) of input file(s). Separate multiple\nnames by whitespace. Expects\
    \ a table of\nfloat values where the first column\nrepresents a continous time\
    \ scale and any\nsucessive column represents the population\nof a certain state\
    \ at that time value. For\nnaming of the states, use a header line,\ncf. option\
    \ -H."
  type: boolean
  inputBinding:
    prefix: --ifile
- id: in_prob_min
  doc: "Minimal probability a state needs to\nacquire during the simulation to be\n\
    visualized. [default: 0.03]"
  type: boolean
  inputBinding:
    prefix: --probMin
- id: in_title
  doc: "Set title for plot. Defaults to output file\nname. Pass empty string to disable\
    \ title\nplotting."
  type: File
  inputBinding:
    prefix: --title
- id: in_second_color_index
  doc: "Starting with the given index, a second\ngradient color is used when plotting\
    \ more\nthan 12 curves."
  type: boolean
  inputBinding:
    prefix: --second-color-index
- id: in_sum_states
  doc: "Comma-separated list of state indices. The\nprobability of the selected states\
    \ is\nsummed up and added to the as an additional\ndashed curve. Use 'i-j' for\n\
    continuousindices. Also supports a leading\nlabel followed by ':'.The first state\
    \ has\nindex 1 (time is not a state). [default: ]\n"
  type: boolean
  inputBinding:
    prefix: --sum-states
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_title
  doc: "Set title for plot. Defaults to output file\nname. Pass empty string to disable\
    \ title\nplotting."
  type: File
  outputBinding:
    glob: $(inputs.in_title)
cwlVersion: v1.1
baseCommand:
- kinPlot.R
