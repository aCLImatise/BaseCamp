version 1.0

task ScriptAllHeatmapssh {
  command <<<
    script_all_heatmaps_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}