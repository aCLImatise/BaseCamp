class: CommandLineTool
id: ../../../biomaj_cli.py.cwl
inputs:
- id: in_config
  doc: ': global.properties file path'
  type: boolean
  inputBinding:
    prefix: --config
- id: in_status
  doc: ": list of banks with published release\n[OPTIONAL]\n--bank xx / bank: Get\
    \ status details of bank"
  type: boolean
  inputBinding:
    prefix: --status
- id: in_status_ko
  doc: ': list of banks in error status (last run)'
  type: boolean
  inputBinding:
    prefix: --status-ko
- id: in_log
  doc: '|INFO|WARN|ERR  [OPTIONAL]: set log level in logs for this run, default is
    set in global.properties file'
  type: File
  inputBinding:
    prefix: --log
- id: in_check
  doc: ": Check bank property file\n[MANDATORY]\n--bank xx: name of the bank to check\
    \ (will check xx.properties)"
  type: boolean
  inputBinding:
    prefix: --check
- id: in_owner
  doc: ": Change owner of the bank (user id)\n[MANDATORY]\n--bank xx: name of the\
    \ bank"
  type: string
  inputBinding:
    prefix: --owner
- id: in_visibility
  doc: "|private: change visibility public/private of a bank\n[MANDATORY]\n--bank\
    \ xx: name of the bank"
  type: string
  inputBinding:
    prefix: --visibility
- id: in_change_dbname
  doc: ": Change name of the bank to this new name\n[MANDATORY]\n--bank xx: current\
    \ name of the bank"
  type: string
  inputBinding:
    prefix: --change-dbname
- id: in_move_production_directories
  doc: ": Change bank production directories location to this new path, path must\
    \ exists\n[MANDATORY]\n--bank xx: current name of the bank"
  type: File
  inputBinding:
    prefix: --move-production-directories
- id: in_update
  doc: ": Update bank\n[MANDATORY]\n--bank xx: name of the bank(s) to update, comma\
    \ separated\n[OPTIONAL]\n--publish: after update set as *current* version\n--from-scratch:\
    \ force a new update cycle, even if release is identical, release will be incremented\
    \ like (myrel_1)\n--stop-before xx: stop update cycle before the start of step\
    \ xx\n--stop-after xx: stop update cycle after step xx has completed\n--from-task\
    \ xx --release yy: Force an re-update cycle for bank release *yy* or from current\
    \ cycle (in production directories), skipping steps up to *xx*\n--process xx:\
    \ linked to from-task, optionally specify a block, meta or process name to start\
    \ from\n--release xx: release to update"
  type: boolean
  inputBinding:
    prefix: --update
- id: in_publish
  doc: ": Publish bank as current release to use\n[MANDATORY]\n--bank xx: name of\
    \ the bank to update\n--release xx: release of the bank to publish"
  type: boolean
  inputBinding:
    prefix: --publish
- id: in_unpublish
  doc: ": Unpublish bank (remove current)\n[MANDATORY]\n--bank xx: name of the bank\
    \ to update"
  type: boolean
  inputBinding:
    prefix: --unpublish
- id: in_remove_all
  doc: ": Remove all bank releases and database records\n[MANDATORY]\n--bank xx: name\
    \ of the bank to update\n[OPTIONAL]\n--force: remove freezed releases"
  type: boolean
  inputBinding:
    prefix: --remove-all
- id: in_remove_pending
  doc: ": Remove pending releases\n[MANDATORY]\n--bank xx: name of the bank to update"
  type: boolean
  inputBinding:
    prefix: --remove-pending
- id: in_remove
  doc: ": Remove bank release (files and database release)\n[MANDATORY]\n--bank xx:\
    \ name of the bank to update\n--release xx: release of the bank to remove\nRelease\
    \ must not be the *current* version. If this is the case, publish a new release\
    \ before."
  type: boolean
  inputBinding:
    prefix: --remove
- id: in_freeze
  doc: ": Freeze bank release (cannot be removed)\n[MANDATORY]\n--bank xx: name of\
    \ the bank to update\n--release xx: release of the bank to remove"
  type: boolean
  inputBinding:
    prefix: --freeze
- id: in_unfreeze
  doc: ": Unfreeze bank release (can be removed)\n[MANDATORY]\n--bank xx: name of\
    \ the bank to update\n--release xx: release of the bank to remove"
  type: boolean
  inputBinding:
    prefix: --unfreeze
- id: in_search
  doc: ': basic search in bank production releases, return list of banks'
  type: boolean
  inputBinding:
    prefix: --search
- id: in_formats
  doc: ',yy : list of comma separated format'
  type: string
  inputBinding:
    prefix: --formats
- id: in_query
  doc: '"LUCENE query syntax": search in index (if activated)'
  type: boolean
  inputBinding:
    prefix: --query
- id: in_show
  doc: ": Show bank files per format\n[MANDATORY]\n--bank xx: name of the bank to\
    \ show\n[OPTIONAL]\n--release xx: release of the bank to show"
  type: boolean
  inputBinding:
    prefix: --show
- id: in_maintenance
  doc: ': (un)set biomaj in maintenance mode to prevent updates/removal'
  type: string
  inputBinding:
    prefix: --maintenance
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- biomaj-cli.py
