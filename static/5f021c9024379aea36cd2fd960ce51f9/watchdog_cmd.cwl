class: CommandLineTool
id: watchdog_cmd.cwl
inputs:
- id: attach_info
  doc: path to a file that is used to restore the info on previously running  tasks
    when Wathdog should be re-attached to running tasks; (can not be  used in combination
    with -resume as resume file is automatically loaded)
  type: boolean
  inputBinding:
    prefix: -attachInfo
- id: auto_detach
  doc: 'stops the execution of Watchdog whenever possible (running tasks on an  external
    executor will not be terminated on detach); status of  previously running tasks
    is checked when Watchdog is started with the  -restart and -attachInfo option;
    Default: false'
  type: boolean
  inputBinding:
    prefix: -autoDetach
- id: disable_checkpoint
  doc: 'checkpoints are ignored during execution Default: false'
  type: boolean
  inputBinding:
    prefix: -disableCheckpoint
- id: disable_mails
  doc: 'no mails are sent even if a mail adress is given in the workflow Default:
    false'
  type: boolean
  inputBinding:
    prefix: -disableMails
- id: exclude
  doc: 'xml task id that should be ignored during execution; can be used several  times;
    can be used in combination with -start and -stop Default: []'
  type: boolean
  inputBinding:
    prefix: -exclude
- id: force_loading
  doc: 'ignores the XSD schema definition file of watchdog and all modules  during
    parsing (might crash) Default: false'
  type: boolean
  inputBinding:
    prefix: -forceLoading
- id: ignore_executor
  doc: 'ignores the executor info and executes all tasks on the local host  running
    n tasks at once Default: 0'
  type: boolean
  inputBinding:
    prefix: -ignoreExecutor
- id: include
  doc: 'xml task id that should be executed; can be used several times; can be  used
    in combination with -start and -stop Default: []'
  type: boolean
  inputBinding:
    prefix: -include
- id: log
  doc: path to the log file
  type: boolean
  inputBinding:
    prefix: -log
- id: mail_config
  doc: config file for the mail server; if none is given SMTP on port 25 on  localhost
    without authentification is used
  type: boolean
  inputBinding:
    prefix: -mailConfig
- id: mail_wait_time
  doc: 'wait time in seconds before task processing is started if no mail adress  is
    given Default: 5'
  type: boolean
  inputBinding:
    prefix: -mailWaitTime
- id: port
  doc: 'port for the HTTP server Default: 8080'
  type: boolean
  inputBinding:
    prefix: -port
- id: resume
  doc: resumes workflow execution whereby tasks that were executed successfully  (and
    parameters are unchanged) are ignored; expects a watchdog status  log file from
    a previous watchdog run; can be used in combination with  -start, -stop, -include
    and -exclude
  type: boolean
  inputBinding:
    prefix: -resume
- id: simulate
  doc: 'simulate the jobs as far as possible Default: false'
  type: boolean
  inputBinding:
    prefix: -simulate
- id: start
  doc: 'start with that ID (included) Default: -2147483648'
  type: boolean
  inputBinding:
    prefix: -start
- id: stop
  doc: 'stop with that ID (included) Default: 2147483647'
  type: boolean
  inputBinding:
    prefix: -stop
- id: tmp_folder
  doc: 'uses a different tmp folder; should be accessible by external executors;  default:
    ${watchdogBase}/tmp'
  type: boolean
  inputBinding:
    prefix: -tmpFolder
- id: use_env_base
  doc: 'ignores the watchdogBase attribute of the XML workflow and overrides it  with
    the content of the WATCHDOG_HOME environment variable Default: false'
  type: boolean
  inputBinding:
    prefix: -useEnvBase
- id: validate
  doc: 'validate a XML file or a folder containing *.xml files Default: false'
  type: boolean
  inputBinding:
    prefix: -validate
- id: version
  doc: prints the version number of Watchdog
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- watchdog-cmd
