#!/usr/bin/env cwl-runner

baseCommand:
- kinPlot.R
class: CommandLineTool
cwlVersion: v1.0
id: kinplot.r
inputs:
- doc: Input file has a header which is used to name the state columns.
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: Use linear instead of logarithmic time
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: Cut off plot when equilibrium is reached
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: RDS file containing argument values
  id: opts
  inputBinding:
    prefix: --opts
  type: boolean
- doc: Name(s) of input file(s). Separate multiple names by whitespace. Expects a
    table of float values where the first column represents a continous time scale
    and any sucessive column represents the population of a certain state at that
    time value. For naming of the states, use a header line, cf. option -H.
  id: i_file
  inputBinding:
    prefix: --ifile
  type: boolean
- doc: 'Minimal probability a state needs to acquire during the simulation to be visualized.
    [default: 0.03]'
  id: prob_min
  inputBinding:
    prefix: --probMin
  type: boolean
- doc: Set title for plot. Defaults to output file name. Pass empty string to disable
    title plotting.
  id: title
  inputBinding:
    prefix: --title
  type: boolean
- doc: Starting with the given index, a second gradient color is used when plotting
    more than 12 curves.
  id: second_color_index
  inputBinding:
    prefix: --second-color-index
  type: boolean
- doc: "Comma-separated list of state indices. The probability of the selected states\
    \ is summed up and added to the as an additional dashed curve. Use 'i-j' for continuousindices.\
    \ Also supports a leading label followed by ':'.The first state has index 1 (time\
    \ is not a state). [default: ]"
  id: sum_states
  inputBinding:
    prefix: --sum-states
  type: boolean
