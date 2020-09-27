version 1.0

task DgeniesClear {
  input {
    Boolean? clear_crons
    Boolean? clear_logs
    Boolean? clear_jobs
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
      ~{if (clear_crons) then "-c" else ""} \
      ~{if (clear_logs) then "-l" else ""} \
      ~{if (clear_jobs) then "-j" else ""} \
      ~{if defined(max_age) then ("--max-age " +  '"' + max_age + '"') else ""} \
      ~{if (add_option_use) then "-w" else ""}
  >>>
  parameter_meta {
    clear_crons: "[CRONS], --crons [CRONS]\\nClear crons"
    clear_logs: "[LOGS], --logs [LOGS]\\nClear logs"
    clear_jobs: "[JOBS], --jobs [JOBS]\\nClear jobs"
    max_age: "Max age for job to delete (0 for all)"
    add_option_use: "[WEB], --web [WEB]\\nAdd this option with -j option, if you use the\\nwebserver mode\\n"
    cron_s: ""
    logs: ""
    jobs: ""
  }
  output {
    File out_stdout = stdout()
  }
}