version 1.0

task CombineEvalReportspl {
  input {
    Boolean? eval_report_mode
    Boolean? general_statistics_report
    Boolean? more_options
    Boolean? options
  }
  command <<<
    combine_eval_reports_pl \
      ~{if (eval_report_mode) then "-e" else ""} \
      ~{if (general_statistics_report) then "-s" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    eval_report_mode: ": Eval report mode [default]"
    general_statistics_report: ": General statistics report mode.  Cannot be used with -e."
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}