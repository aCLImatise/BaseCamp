version 1.0

task DgeniesClear {
  input {
    Boolean? _clear_crons
    Boolean? _clear_logs
    Boolean? _clear_jobs
    Int? max_age
    Boolean? add_option_use
    String? cron_s
    String? logs
    String? jobs
  }
  command <<<
    dgenies clear \
      ~{cron_s} \
      ~{logs} \
      ~{jobs} \
      ~{true="-c" false="" _clear_crons} \
      ~{true="-l" false="" _clear_logs} \
      ~{true="-j" false="" _clear_jobs} \
      ~{if defined(max_age) then ("--max-age " +  '"' + max_age + '"') else ""} \
      ~{true="-w" false="" add_option_use}
  >>>
  parameter_meta {
    _clear_crons: "[CRONS], --crons [CRONS] Clear crons"
    _clear_logs: "[LOGS], --logs [LOGS] Clear logs"
    _clear_jobs: "[JOBS], --jobs [JOBS] Clear jobs"
    max_age: "Max age for job to delete (0 for all)"
    add_option_use: "[WEB], --web [WEB] Add this option with -j option, if you use the webserver mode"
    cron_s: ""
    logs: ""
    jobs: ""
  }
}