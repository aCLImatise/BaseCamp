version 1.0

task WatchdogCmd {
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
    watchdog-cmd \
      ~{main_class} \
      ~{true="-attachInfo" false="" attach_info} \
      ~{true="-autoDetach" false="" auto_detach} \
      ~{true="-disableCheckpoint" false="" disable_checkpoint} \
      ~{true="-disableMails" false="" disable_mails} \
      ~{true="-exclude" false="" exclude} \
      ~{true="-forceLoading" false="" force_loading} \
      ~{true="-ignoreExecutor" false="" ignore_executor} \
      ~{true="-include" false="" include} \
      ~{true="-log" false="" log} \
      ~{true="-mailConfig" false="" mail_config} \
      ~{true="-mailWaitTime" false="" mail_wait_time} \
      ~{true="-port" false="" port} \
      ~{true="-resume" false="" resume} \
      ~{true="-simulate" false="" simulate} \
      ~{true="-start" false="" start} \
      ~{true="-stop" false="" stop} \
      ~{true="-tmpFolder" false="" tmp_folder} \
      ~{true="-useEnvBase" false="" use_env_base} \
      ~{true="-validate" false="" validate} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    attach_info: "path to a file that is used to restore the info on previously running  tasks when Wathdog should be re-attached to running tasks; (can not be  used in combination with -resume as resume file is automatically loaded)"
    auto_detach: "stops the execution of Watchdog whenever possible (running tasks on an  external executor will not be terminated on detach); status of  previously running tasks is checked when Watchdog is started with the  -restart and -attachInfo option; Default: false"
    disable_checkpoint: "checkpoints are ignored during execution Default: false"
    disable_mails: "no mails are sent even if a mail adress is given in the workflow Default: false"
    exclude: "xml task id that should be ignored during execution; can be used several  times; can be used in combination with -start and -stop Default: []"
    force_loading: "ignores the XSD schema definition file of watchdog and all modules  during parsing (might crash) Default: false"
    ignore_executor: "ignores the executor info and executes all tasks on the local host  running n tasks at once Default: 0"
    include: "xml task id that should be executed; can be used several times; can be  used in combination with -start and -stop Default: []"
    log: "path to the log file"
    mail_config: "config file for the mail server; if none is given SMTP on port 25 on  localhost without authentification is used"
    mail_wait_time: "wait time in seconds before task processing is started if no mail adress  is given Default: 5"
    port: "port for the HTTP server Default: 8080"
    resume: "resumes workflow execution whereby tasks that were executed successfully  (and parameters are unchanged) are ignored; expects a watchdog status  log file from a previous watchdog run; can be used in combination with  -start, -stop, -include and -exclude"
    simulate: "simulate the jobs as far as possible Default: false"
    start: "start with that ID (included) Default: -2147483648"
    stop: "stop with that ID (included) Default: 2147483647"
    tmp_folder: "uses a different tmp folder; should be accessible by external executors;  default: ${watchdogBase}/tmp"
    use_env_base: "ignores the watchdogBase attribute of the XML workflow and overrides it  with the content of the WATCHDOG_HOME environment variable Default: false"
    validate: "validate a XML file or a folder containing *.xml files Default: false"
    version: "prints the version number of Watchdog"
    main_class: ""
  }
}