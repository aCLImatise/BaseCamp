version 1.0

task CombineEvalReports.pl {
  input {
    Boolean? eval_report_mode
    Boolean? general_statistics_report
    Boolean? options
    Boolean? more_options
  }
  command <<<
    combine_eval_reports.pl \
      ~{true="-e" false="" eval_report_mode} \
      ~{true="-s" false="" general_statistics_report} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    eval_report_mode: ": Eval report mode [default]"
    general_statistics_report: ": General statistics report mode.  Cannot be used with -e."
    options: ""
    more_options: ""
  }
}