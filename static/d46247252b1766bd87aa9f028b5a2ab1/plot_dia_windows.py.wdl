version 1.0

task PlotDiaWindowspy {
  input {
    String window_file
    String precursor_map
  }
  command <<<
    plot_dia_windows_py \
      ~{window_file} \
      ~{precursor_map}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    window_file: ""
    precursor_map: ""
  }
  output {
    File out_stdout = stdout()
  }
}