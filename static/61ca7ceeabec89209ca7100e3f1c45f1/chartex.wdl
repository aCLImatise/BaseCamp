version 1.0

task Chartex {
  input {
    Boolean chartChartName
    String chartChartName
    String manMan
  }
  command <<<
    chartex \
      ~{true="--chartname" false="" chartChartName} \
      ~{if defined(chartChartName) then ("--chartname " +  '"' + chartChartName + '"') else ""} \
      ~{if defined(manMan) then ("--man " +  '"' + manMan + '"') else ""}
  >>>
}