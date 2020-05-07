version 1.0

task VtoolsReportPlotAssociation {
  input {
    Boolean vV
  }
  command <<<
    vtools_report plot_association \
      ~{true="-v" false="" vV}
  >>>
}