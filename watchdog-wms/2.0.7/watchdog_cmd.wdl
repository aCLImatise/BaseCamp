version 1.0

task Watchdogcmd {
  input {
    Boolean? attach_info
    Boolean? auto_detach
    Boolean? disable_checkpoint
    Boolean? disable_mails
    Boolean? exclude
    Boolean? force_loading
    Boolean? ignore_executor
    Boolean? include
    Boolean? log
    Boolean? mail_config
    Boolean? mail_wait_time
    Boolean? port
    Boolean? resume
    Boolean? simulate
    Boolean? start
    Boolean? stop
    Boolean? tmp_folder
    Boolean? use_env_base
    Boolean? validate
    Boolean? version
    String main_class
  }
  command <<<
    watchdog_cmd \
      ~{main_class} \
      ~{if (attach_info) then "-attachInfo" else ""} \
      ~{if (auto_detach) then "-autoDetach" else ""} \
      ~{if (disable_checkpoint) then "-disableCheckpoint" else ""} \
      ~{if (disable_mails) then "-disableMails" else ""} \
      ~{if (exclude) then "-exclude" else ""} \
      ~{if (force_loading) then "-forceLoading" else ""} \
      ~{if (ignore_executor) then "-ignoreExecutor" else ""} \
      ~{if (include) then "-include" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (mail_config) then "-mailConfig" else ""} \
      ~{if (mail_wait_time) then "-mailWaitTime" else ""} \
      ~{if (port) then "-port" else ""} \
      ~{if (resume) then "-resume" else ""} \
      ~{if (simulate) then "-simulate" else ""} \
      ~{if (start) then "-start" else ""} \
      ~{if (stop) then "-stop" else ""} \
      ~{if (tmp_folder) then "-tmpFolder" else ""} \
      ~{if (use_env_base) then "-useEnvBase" else ""} \
      ~{if (validate) then "-validate" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    attach_info: "path to a file that is used to restore the info on previously running\\ntasks when Wathdog should be re-attached to running tasks; (can not be\\nused in combination with -resume as resume file is automatically loaded)"
    auto_detach: "stops the execution of Watchdog whenever possible (running tasks on an\\nexternal executor will not be terminated on detach); status of\\npreviously running tasks is checked when Watchdog is started with the\\n-restart and -attachInfo option;\\nDefault: false"
    disable_checkpoint: "checkpoints are ignored during execution\\nDefault: false"
    disable_mails: "no mails are sent even if a mail adress is given in the workflow\\nDefault: false"
    exclude: "xml task id that should be ignored during execution; can be used several\\ntimes; can be used in combination with -start and -stop\\nDefault: []"
    force_loading: "ignores the XSD schema definition file of watchdog and all modules\\nduring parsing (might crash)\\nDefault: false"
    ignore_executor: "ignores the executor info and executes all tasks on the local host\\nrunning n tasks at once\\nDefault: 0"
    include: "xml task id that should be executed; can be used several times; can be\\nused in combination with -start and -stop\\nDefault: []"
    log: "path to the log file"
    mail_config: "config file for the mail server; if none is given SMTP on port 25 on\\nlocalhost without authentification is used"
    mail_wait_time: "wait time in seconds before task processing is started if no mail adress\\nis given\\nDefault: 5"
    port: "port for the HTTP server\\nDefault: 8080"
    resume: "resumes workflow execution whereby tasks that were executed successfully\\n(and parameters are unchanged) are ignored; expects a watchdog status\\nlog file from a previous watchdog run; can be used in combination with\\n-start, -stop, -include and -exclude"
    simulate: "simulate the jobs as far as possible\\nDefault: false"
    start: "start with that ID (included)\\nDefault: -2147483648"
    stop: "stop with that ID (included)\\nDefault: 2147483647"
    tmp_folder: "uses a different tmp folder; should be accessible by external executors;\\ndefault: ${watchdogBase}/tmp"
    use_env_base: "ignores the watchdogBase attribute of the XML workflow and overrides it\\nwith the content of the WATCHDOG_HOME environment variable\\nDefault: false"
    validate: "validate a XML file or a folder containing *.xml files\\nDefault: false"
    version: "prints the version number of Watchdog"
    main_class: ""
  }
  output {
    File out_stdout = stdout()
  }
}