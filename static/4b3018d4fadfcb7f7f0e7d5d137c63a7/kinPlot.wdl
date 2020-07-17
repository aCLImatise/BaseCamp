version 1.0

task KinPlot.R {
  input {
    Boolean? input_file_header
    Boolean? use_linear_time
    Boolean? cut_plot_reached
    Boolean? opts
    Boolean? i_file
    Boolean? prob_min
    Boolean? title
    Boolean? second_color_index
    Boolean? sum_states
  }
  command <<<
    kinPlot.R \
      ~{true="-H" false="" input_file_header} \
      ~{true="-l" false="" use_linear_time} \
      ~{true="-c" false="" cut_plot_reached} \
      ~{true="--opts" false="" opts} \
      ~{true="--ifile" false="" i_file} \
      ~{true="--probMin" false="" prob_min} \
      ~{true="--title" false="" title} \
      ~{true="--second-color-index" false="" second_color_index} \
      ~{true="--sum-states" false="" sum_states}
  >>>
  parameter_meta {
    input_file_header: "Input file has a header which is used to name the state columns."
    use_linear_time: "Use linear instead of logarithmic time"
    cut_plot_reached: "Cut off plot when equilibrium is reached"
    opts: "RDS file containing argument values"
    i_file: "Name(s) of input file(s). Separate multiple names by whitespace. Expects a table of float values where the first column represents a continous time scale and any sucessive column represents the population of a certain state at that time value. For naming of the states, use a header line, cf. option -H."
    prob_min: "Minimal probability a state needs to acquire during the simulation to be visualized. [default: 0.03]"
    title: "Set title for plot. Defaults to output file name. Pass empty string to disable title plotting."
    second_color_index: "Starting with the given index, a second gradient color is used when plotting more than 12 curves."
    sum_states: "Comma-separated list of state indices. The probability of the selected states is summed up and added to the as an additional dashed curve. Use 'i-j' for continuousindices. Also supports a leading label followed by ':'.The first state has index 1 (time is not a state). [default: ]"
  }
}