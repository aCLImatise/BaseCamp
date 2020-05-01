#!/usr/bin/env cwl-runner

baseCommand:
- watchdog-cmd
class: CommandLineTool
cwlVersion: v1.0
id: watchdog-cmd
inputs:
- doc: path to a file that is used to restore the info on previously running  tasks
    when Wathdog should be re-attached to running tasks; (can not be  used in combination
    with -resume as resume file is automatically loaded)
  id: attach_info
  inputBinding:
    prefix: -attachInfo
  type: boolean
- doc: 'stops the execution of Watchdog whenever possible (running tasks on an  external
    executor will not be terminated on detach); status of  previously running tasks
    is checked when Watchdog is started with the  -restart and -attachInfo option;
    Default: false'
  id: auto_detach
  inputBinding:
    prefix: -autoDetach
  type: boolean
- doc: 'checkpoints are ignored during execution Default: false'
  id: disable_checkpoint
  inputBinding:
    prefix: -disableCheckpoint
  type: boolean
- doc: 'no mails are sent even if a mail adress is given in the workflow Default:
    false'
  id: disable_mails
  inputBinding:
    prefix: -disableMails
  type: boolean
- doc: 'xml task id that should be ignored during execution; can be used several  times;
    can be used in combination with -start and -stop Default: []'
  id: exclude
  inputBinding:
    prefix: -exclude
  type: boolean
- doc: 'ignores the XSD schema definition file of watchdog and all modules  during
    parsing (might crash) Default: false'
  id: force_loading
  inputBinding:
    prefix: -forceLoading
  type: boolean
- doc: 'ignores the executor info and executes all tasks on the local host  running
    n tasks at once Default: 0'
  id: ignore_executor
  inputBinding:
    prefix: -ignoreExecutor
  type: boolean
- doc: 'xml task id that should be executed; can be used several times; can be  used
    in combination with -start and -stop Default: []'
  id: include
  inputBinding:
    prefix: -include
  type: boolean
- doc: path to the log file
  id: log
  inputBinding:
    prefix: -log
  type: boolean
- doc: config file for the mail server; if none is given SMTP on port 25 on  localhost
    without authentification is used
  id: mail_config
  inputBinding:
    prefix: -mailConfig
  type: boolean
- doc: 'wait time in seconds before task processing is started if no mail adress  is
    given Default: 5'
  id: mail_wait_time
  inputBinding:
    prefix: -mailWaitTime
  type: boolean
- doc: 'port for the HTTP server Default: 8080'
  id: port
  inputBinding:
    prefix: -port
  type: boolean
- doc: resumes workflow execution whereby tasks that were executed successfully  (and
    parameters are unchanged) are ignored; expects a watchdog status  log file from
    a previous watchdog run; can be used in combination with  -start, -stop, -include
    and -exclude
  id: resume
  inputBinding:
    prefix: -resume
  type: boolean
- doc: 'simulate the jobs as far as possible Default: false'
  id: simulate
  inputBinding:
    prefix: -simulate
  type: boolean
- doc: 'start with that ID (included) Default: -2147483648'
  id: start
  inputBinding:
    prefix: -start
  type: boolean
- doc: 'stop with that ID (included) Default: 2147483647'
  id: stop
  inputBinding:
    prefix: -stop
  type: boolean
- doc: 'uses a different tmp folder; should be accessible by external executors;  default:
    ${watchdogBase}/tmp'
  id: tmp_folder
  inputBinding:
    prefix: -tmpFolder
  type: boolean
- doc: 'ignores the watchdogBase attribute of the XML workflow and overrides it  with
    the content of the WATCHDOG_HOME environment variable Default: false'
  id: use_env_base
  inputBinding:
    prefix: -useEnvBase
  type: boolean
- doc: 'validate a XML file or a folder containing *.xml files Default: false'
  id: validate
  inputBinding:
    prefix: -validate
  type: boolean
- doc: prints the version number of Watchdog
  id: version
  inputBinding:
    prefix: -version
  type: boolean
