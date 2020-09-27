class: CommandLineTool
id: watchdog_cmd.cwl
inputs:
- id: in_attach_info
  doc: "path to a file that is used to restore the info on previously running\ntasks\
    \ when Wathdog should be re-attached to running tasks; (can not be\nused in combination\
    \ with -resume as resume file is automatically loaded)"
  type: boolean
  inputBinding:
    prefix: -attachInfo
- id: in_auto_detach
  doc: "stops the execution of Watchdog whenever possible (running tasks on an\nexternal\
    \ executor will not be terminated on detach); status of\npreviously running tasks\
    \ is checked when Watchdog is started with the\n-restart and -attachInfo option;\n\
    Default: false"
  type: boolean
  inputBinding:
    prefix: -autoDetach
- id: in_disable_checkpoint
  doc: "checkpoints are ignored during execution\nDefault: false"
  type: boolean
  inputBinding:
    prefix: -disableCheckpoint
- id: in_disable_mails
  doc: "no mails are sent even if a mail adress is given in the workflow\nDefault:\
    \ false"
  type: boolean
  inputBinding:
    prefix: -disableMails
- id: in_exclude
  doc: "xml task id that should be ignored during execution; can be used several\n\
    times; can be used in combination with -start and -stop\nDefault: []"
  type: boolean
  inputBinding:
    prefix: -exclude
- id: in_force_loading
  doc: "ignores the XSD schema definition file of watchdog and all modules\nduring\
    \ parsing (might crash)\nDefault: false"
  type: boolean
  inputBinding:
    prefix: -forceLoading
- id: in_ignore_executor
  doc: "ignores the executor info and executes all tasks on the local host\nrunning\
    \ n tasks at once\nDefault: 0"
  type: boolean
  inputBinding:
    prefix: -ignoreExecutor
- id: in_include
  doc: "xml task id that should be executed; can be used several times; can be\nused\
    \ in combination with -start and -stop\nDefault: []"
  type: boolean
  inputBinding:
    prefix: -include
- id: in_log
  doc: path to the log file
  type: boolean
  inputBinding:
    prefix: -log
- id: in_mail_config
  doc: "config file for the mail server; if none is given SMTP on port 25 on\nlocalhost\
    \ without authentification is used"
  type: boolean
  inputBinding:
    prefix: -mailConfig
- id: in_mail_wait_time
  doc: "wait time in seconds before task processing is started if no mail adress\n\
    is given\nDefault: 5"
  type: boolean
  inputBinding:
    prefix: -mailWaitTime
- id: in_port
  doc: "port for the HTTP server\nDefault: 8080"
  type: boolean
  inputBinding:
    prefix: -port
- id: in_resume
  doc: "resumes workflow execution whereby tasks that were executed successfully\n\
    (and parameters are unchanged) are ignored; expects a watchdog status\nlog file\
    \ from a previous watchdog run; can be used in combination with\n-start, -stop,\
    \ -include and -exclude"
  type: boolean
  inputBinding:
    prefix: -resume
- id: in_simulate
  doc: "simulate the jobs as far as possible\nDefault: false"
  type: boolean
  inputBinding:
    prefix: -simulate
- id: in_start
  doc: "start with that ID (included)\nDefault: -2147483648"
  type: boolean
  inputBinding:
    prefix: -start
- id: in_stop
  doc: "stop with that ID (included)\nDefault: 2147483647"
  type: boolean
  inputBinding:
    prefix: -stop
- id: in_tmp_folder
  doc: "uses a different tmp folder; should be accessible by external executors;\n\
    default: ${watchdogBase}/tmp"
  type: boolean
  inputBinding:
    prefix: -tmpFolder
- id: in_use_env_base
  doc: "ignores the watchdogBase attribute of the XML workflow and overrides it\n\
    with the content of the WATCHDOG_HOME environment variable\nDefault: false"
  type: boolean
  inputBinding:
    prefix: -useEnvBase
- id: in_validate
  doc: "validate a XML file or a folder containing *.xml files\nDefault: false"
  type: boolean
  inputBinding:
    prefix: -validate
- id: in_version
  doc: prints the version number of Watchdog
  type: boolean
  inputBinding:
    prefix: -version
- id: in_main_class
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- watchdog-cmd
