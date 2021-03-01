version 1.0

task KinPlotR {
  input {
    Boolean? input_file_has
    Boolean? use_linear_instead
    Boolean? cut_plot_when
    Boolean? opts
    Boolean? i_file
    Boolean? prob_min
    File? title
    Boolean? second_color_index
    Boolean? sum_states
  }
  command <<<
    kinPlot_R \
      ~{if (input_file_has) then "-H" else ""} \
      ~{if (use_linear_instead) then "-l" else ""} \
      ~{if (cut_plot_when) then "-c" else ""} \
      ~{if (opts) then "--opts" else ""} \
      ~{if (i_file) then "--ifile" else ""} \
      ~{if (prob_min) then "--probMin" else ""} \
      ~{if (title) then "--title" else ""} \
      ~{if (second_color_index) then "--second-color-index" else ""} \
      ~{if (sum_states) then "--sum-states" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_has: "Input file has a header which is used to\\nname the state columns."
    use_linear_instead: "Use linear instead of logarithmic time"
    cut_plot_when: "Cut off plot when equilibrium is reached"
    opts: "RDS file containing argument values"
    i_file: "Name(s) of input file(s). Separate multiple\\nnames by whitespace. Expects a table of\\nfloat values where the first column\\nrepresents a continous time scale and any\\nsucessive column represents the population\\nof a certain state at that time value. For\\nnaming of the states, use a header line,\\ncf. option -H."
    prob_min: "Minimal probability a state needs to\\nacquire during the simulation to be\\nvisualized. [default: 0.03]"
    title: "Set title for plot. Defaults to output file\\nname. Pass empty string to disable title\\nplotting."
    second_color_index: "Starting with the given index, a second\\ngradient color is used when plotting more\\nthan 12 curves."
    sum_states: "Comma-separated list of state indices. The\\nprobability of the selected states is\\nsummed up and added to the as an additional\\ndashed curve. Use 'i-j' for\\ncontinuousindices. Also supports a leading\\nlabel followed by ':'.The first state has\\nindex 1 (time is not a state). [default: ]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_title = "${in_title}"
  }
}