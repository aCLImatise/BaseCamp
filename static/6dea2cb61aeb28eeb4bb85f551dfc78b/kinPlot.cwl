class: CommandLineTool
id: kinPlot.R.cwl
inputs:
- id: h
  doc: Input file has a header which is used to name the state columns.
  type: boolean
  inputBinding:
    prefix: -H
- id: l
  doc: Use linear instead of logarithmic time
  type: boolean
  inputBinding:
    prefix: -l
- id: c
  doc: Cut off plot when equilibrium is reached
  type: boolean
  inputBinding:
    prefix: -c
- id: opts
  doc: RDS file containing argument values
  type: boolean
  inputBinding:
    prefix: --opts
- id: i_file
  doc: Name(s) of input file(s). Separate multiple names by whitespace. Expects a
    table of float values where the first column represents a continous time scale
    and any sucessive column represents the population of a certain state at that
    time value. For naming of the states, use a header line, cf. option -H.
  type: boolean
  inputBinding:
    prefix: --ifile
- id: prob_min
  doc: 'Minimal probability a state needs to acquire during the simulation to be visualized.
    [default: 0.03]'
  type: boolean
  inputBinding:
    prefix: --probMin
- id: title
  doc: Set title for plot. Defaults to output file name. Pass empty string to disable
    title plotting.
  type: boolean
  inputBinding:
    prefix: --title
- id: second_color_index
  doc: Starting with the given index, a second gradient color is used when plotting
    more than 12 curves.
  type: boolean
  inputBinding:
    prefix: --second-color-index
- id: sum_states
  doc: "Comma-separated list of state indices. The probability of the selected states\
    \ is summed up and added to the as an additional dashed curve. Use 'i-j' for continuousindices.\
    \ Also supports a leading label followed by ':'.The first state has index 1 (time\
    \ is not a state). [default: ]"
  type: boolean
  inputBinding:
    prefix: --sum-states
outputs: []
cwlVersion: v1.1
baseCommand:
- kinPlot.R
