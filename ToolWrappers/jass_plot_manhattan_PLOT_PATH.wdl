version 1.0

task JassPlotmanhattanPLOTPATH {
  input {
    Boolean? plot_path
    File? work_table_path
    String jass
    String plot_manhattan
  }
  command <<<
    jass plot_manhattan PLOT_PATH \
      ~{jass} \
      ~{plot_manhattan} \
      ~{if (plot_path) then "--plot-path" else ""} \
      ~{if defined(work_table_path) then ("--worktable-path " +  '"' + work_table_path + '"') else ""}
  >>>
  parameter_meta {
    plot_path: ""
    work_table_path: ""
    jass: ""
    plot_manhattan: ""
  }
  output {
    File out_stdout = stdout()
  }
}