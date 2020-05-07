version 1.0

task JassPlotManhattan {
  input {
    String workWorkTablePath
    String plotPlotPath
  }
  command <<<
    jass plot-manhattan \
      ~{if defined(workWorkTablePath) then ("--worktable-path " +  '"' + workWorkTablePath + '"') else ""} \
      ~{if defined(plotPlotPath) then ("--plot-path " +  '"' + plotPlotPath + '"') else ""}
  >>>
}