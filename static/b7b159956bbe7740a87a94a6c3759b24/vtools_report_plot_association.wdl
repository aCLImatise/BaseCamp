version 1.0

task VtoolsReportPlotAssociation {
  input {
    String? verbosity
  }
  command <<<
    vtools_report plot_association \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}