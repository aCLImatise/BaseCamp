version 1.0

task RsemPlotModel {
  input {
    String sample_name
    String output_plot_file
  }
  command <<<
    rsem-plot-model \
      ~{sample_name} \
      ~{output_plot_file}
  >>>
  parameter_meta {
    sample_name: ""
    output_plot_file: ""
  }
}