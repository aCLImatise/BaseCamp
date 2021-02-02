version 1.0

task Rsemplotmodel {
  input {
    String sample_name
    String output_plot_file
  }
  command <<<
    rsem_plot_model \
      ~{sample_name} \
      ~{output_plot_file}
  >>>
  parameter_meta {
    sample_name: ""
    output_plot_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}