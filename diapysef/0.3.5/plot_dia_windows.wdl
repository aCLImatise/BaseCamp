version 1.0

task PlotDiaWindows.py {
  input {
    String window_file
    String precursor_map
  }
  command <<<
    plot_dia_windows.py \
      ~{window_file} \
      ~{precursor_map}
  >>>
  parameter_meta {
    window_file: ""
    precursor_map: ""
  }
}