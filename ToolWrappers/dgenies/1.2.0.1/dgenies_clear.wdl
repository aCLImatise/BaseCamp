version 1.0

task DgeniesClear {
  input {
    Boolean? clear_logs
    Int? max_age
    Boolean? add_option_use
    Boolean? j
    Boolean? c
    String? cron_s
    String? logs
    String? jobs
  }
  command <<<
    dgenies clear \
      ~{cron_s} \
      ~{logs} \
      ~{jobs} \
      ~{if (clear_logs) then "-l" else ""} \
      ~{if defined(max_age) then ("--max-age " +  '"' + max_age + '"') else ""} \
      ~{if (add_option_use) then "-w" else ""} \
      ~{if (j) then "-j" else ""} \
      ~{if (c) then "-c" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    clear_logs: "[LOGS], --logs [LOGS]\\nClear logs"
    max_age: "Max age for job to delete (0 for all)"
    add_option_use: "[WEB], --web [WEB]\\nAdd this option with -j option, if you use the\\nwebserver mode\\n"
    j: ""
    c: ""
    cron_s: ""
    logs: ""
    jobs: ""
  }
  output {
    File out_stdout = stdout()
  }
}