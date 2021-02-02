version 1.0

task JassPlotmanhattan {
  input {
    File? work_table_path
    File? plot_path
  }
  command <<<
    jass plot_manhattan \
      ~{if defined(work_table_path) then ("--worktable-path " +  '"' + work_table_path + '"') else ""} \
      ~{if defined(plot_path) then ("--plot-path " +  '"' + plot_path + '"') else ""}
  >>>
  parameter_meta {
    work_table_path: "path to the worktable file containing the data"
    plot_path: "path to the manhattan plot file to generate\\n"
  }
  output {
    File out_stdout = stdout()
  }
}