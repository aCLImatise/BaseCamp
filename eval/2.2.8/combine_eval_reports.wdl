version 1.0

task CombineEvalReports.pl {
  input {
    Boolean eE
    Boolean sS
  }
  command <<<
    combine_eval_reports.pl \
      ~{true="-e" false="" eE} \
      ~{true="-s" false="" sS}
  >>>
}