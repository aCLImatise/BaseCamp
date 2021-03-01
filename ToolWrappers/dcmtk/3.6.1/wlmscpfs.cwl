class: CommandLineTool
id: wlmscpfs.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean?
  inputBinding:
    prefix: --arguments
- id: in_quiet
  doc: quiet mode, print no warnings and errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose mode, print processing details
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: debug mode, print debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log_level
  doc: "[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level\
    \ l for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_config
  doc: "[f]ilename: string\nuse config file f for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-config
- id: in_single_process
  doc: single process mode
  type: boolean?
  inputBinding:
    prefix: --single-process
- id: in_fork
  doc: fork child process for each association (def.)
  type: boolean?
  inputBinding:
    prefix: --fork
- id: in_data_files_path
  doc: "[p]ath: string (default: /home/www/wlist)\npath to worklist data files"
  type: boolean?
  inputBinding:
    prefix: --data-files-path
- id: in_enable_file_reject
  doc: "enable rejection of incomplete worklist files\n(default)"
  type: boolean?
  inputBinding:
    prefix: --enable-file-reject
- id: in_disable_file_reject
  doc: disable rejection of incomplete worklist files
  type: boolean?
  inputBinding:
    prefix: --disable-file-reject
- id: in_return_no_char_set
  doc: return no specific character set (default)
  type: boolean?
  inputBinding:
    prefix: --return-no-char-set
- id: in_return_iso_ir_one_zero_zero
  doc: return specific character set ISO IR 100
  type: boolean?
  inputBinding:
    prefix: --return-iso-ir-100
- id: in_keep_char_set
  doc: return character set provided in file
  type: boolean?
  inputBinding:
    prefix: --keep-char-set
- id: in_no_sq_expansion
  doc: "disable expansion of empty sequences in C-FIND\nrequest messages"
  type: boolean?
  inputBinding:
    prefix: --no-sq-expansion
- id: in_disable_new_vr
  doc: disable support for new VRs, convert to OB
  type: boolean?
  inputBinding:
    prefix: --disable-new-vr
- id: in_acse_timeout
  doc: "[s]econds: integer (default: 30)\ntimeout for ACSE messages"
  type: boolean?
  inputBinding:
    prefix: --acse-timeout
- id: in_dim_se_timeout
  doc: "[s]econds: integer (default: unlimited)\ntimeout for DIMSE messages"
  type: boolean?
  inputBinding:
    prefix: --dimse-timeout
- id: in_max_associations
  doc: "[a]ssocs: integer (default: 50)\nlimit maximum number of parallel associations"
  type: boolean?
  inputBinding:
    prefix: --max-associations
- id: in_refuse
  doc: refuse association
  type: boolean?
  inputBinding:
    prefix: --refuse
- id: in_reject
  doc: reject association if no implement. class UID
  type: boolean?
  inputBinding:
    prefix: --reject
- id: in_no_fail
  doc: don't fail on an invalid query
  type: boolean?
  inputBinding:
    prefix: --no-fail
- id: in_sleep_after
  doc: "[s]econds: integer\nsleep s seconds after find (default: 0)"
  type: boolean?
  inputBinding:
    prefix: --sleep-after
- id: in_sleep_during
  doc: "[s]econds: integer\nsleep s seconds during find (default: 0)"
  type: boolean?
  inputBinding:
    prefix: --sleep-during
- id: in_max_pdu
  doc: "[n]umber of bytes: integer (4096..131072)\nset max receive pdu to n bytes\
    \ (default: 16384)"
  type: boolean?
  inputBinding:
    prefix: --max-pdu
- id: in_disable_host_lookup
  doc: disable hostname lookup
  type: boolean?
  inputBinding:
    prefix: --disable-host-lookup
- id: in_port
  doc: tcp/ip port number to listen on
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wlmscpfs
