version 1.0

task SketchyUtilsPlotKraken {
  input {
    String reportReport
    String prefixPrefix
    String levelLevel
    Int topTop
    String colorColor
    String titleTitle
    Boolean subSub
  }
  command <<<
    sketchy utils plot-kraken \
      ~{if defined(reportReport) then ("--report " +  '"' + reportReport + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(levelLevel) then ("--level " +  '"' + levelLevel + '"') else ""} \
      ~{if defined(topTop) then ("--top " +  '"' + topTop + '"') else ""} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{true="--sub" false="" subSub}
  >>>
}