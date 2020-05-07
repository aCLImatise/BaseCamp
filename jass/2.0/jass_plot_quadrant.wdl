version 1.0

task JassPlotQuadrant {
  input {
    String workWorkTablePath
    String plotPlotPath
    String significanceSignificanceTreshold
  }
  command <<<
    jass plot-quadrant \
      ~{if defined(workWorkTablePath) then ("--worktable-path " +  '"' + workWorkTablePath + '"') else ""} \
      ~{if defined(plotPlotPath) then ("--plot-path " +  '"' + plotPlotPath + '"') else ""} \
      ~{if defined(significanceSignificanceTreshold) then ("--significance-treshold " +  '"' + significanceSignificanceTreshold + '"') else ""}
  >>>
}