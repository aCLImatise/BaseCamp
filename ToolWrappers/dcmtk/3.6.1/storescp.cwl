class: CommandLineTool
id: storescp.cwl
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
  doc: single process mode (default)
  type: boolean?
  inputBinding:
    prefix: --single-process
- id: in_fork
  doc: fork child process for each association
  type: boolean?
  inputBinding:
    prefix: --fork
- id: in_config_file
  doc: "[f]ilename, [p]rofile: string\nuse profile p from config file f"
  type: boolean?
  inputBinding:
    prefix: --config-file
- id: in_inetd
  doc: run from inetd super server (not with --fork)
  type: boolean?
  inputBinding:
    prefix: --inetd
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
- id: in_ae_title
  doc: "[a]etitle: string\nset my AE title (default: STORESCP)"
  type: boolean?
  inputBinding:
    prefix: --aetitle
- id: in_max_pdu
  doc: "[n]umber of bytes: integer (4096..131072)\nset max receive pdu to n bytes\
    \ (def.: 16384)"
  type: boolean?
  inputBinding:
    prefix: --max-pdu
- id: in_disable_host_lookup
  doc: disable hostname lookup
  type: boolean?
  inputBinding:
    prefix: --disable-host-lookup
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
- id: in_ignore
  doc: ignore store data, receive but do not store
  type: boolean?
  inputBinding:
    prefix: --ignore
- id: in_sleep_after
  doc: "[s]econds: integer\nsleep s seconds after store (default: 0)"
  type: boolean?
  inputBinding:
    prefix: --sleep-after
- id: in_sleep_during
  doc: "[s]econds: integer\nsleep s seconds during store (default: 0)"
  type: boolean?
  inputBinding:
    prefix: --sleep-during
- id: in_abort_after
  doc: "abort association after receipt of C-STORE-RQ\n(but before sending response)"
  type: boolean?
  inputBinding:
    prefix: --abort-after
- id: in_abort_during
  doc: abort association during receipt of C-STORE-RQ
  type: boolean?
  inputBinding:
    prefix: --abort-during
- id: in_promiscuous
  doc: "promiscuous mode, accept unknown SOP classes\n(not with --config-file)"
  type: boolean?
  inputBinding:
    prefix: --promiscuous
- id: in_uid_padding
  doc: silently correct space-padded UIDs
  type: boolean?
  inputBinding:
    prefix: --uid-padding
- id: in_disable_tls
  doc: use normal TCP/IP connection (default)
  type: boolean?
  inputBinding:
    prefix: --disable-tls
- id: in_null_passwd
  doc: use empty string as password
  type: boolean?
  inputBinding:
    prefix: --null-passwd
- id: in_pem_keys
  doc: read keys and certificates as PEM file (def.)
  type: boolean?
  inputBinding:
    prefix: --pem-keys
- id: in_der_keys
  doc: read keys and certificates as DER file
  type: boolean?
  inputBinding:
    prefix: --der-keys
- id: in_require_peer_cert
  doc: verify peer certificate, fail if absent (def.)
  type: boolean?
  inputBinding:
    prefix: --require-peer-cert
- id: in_verify_peer_cert
  doc: verify peer certificate if present
  type: boolean?
  inputBinding:
    prefix: --verify-peer-cert
- id: in_ignore_peer_cert
  doc: don't verify peer certificate
  type: boolean?
  inputBinding:
    prefix: --ignore-peer-cert
- id: in_output_directory
  doc: "[d]irectory: string (default: \".\")\nwrite received objects to existing directory\
    \ d"
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_normal
  doc: allow implicit format conversions (default)
  type: boolean?
  inputBinding:
    prefix: --normal
- id: in_write_dataset
  doc: write data set without file meta information
  type: boolean?
  inputBinding:
    prefix: --write-dataset
- id: in_disable_new_vr
  doc: disable support for new VRs, convert to OB
  type: boolean?
  inputBinding:
    prefix: --disable-new-vr
- id: in_group_length_remove
  doc: always write without group length elements
  type: boolean?
  inputBinding:
    prefix: --group-length-remove
- id: in_length_undefined
  doc: write with undefined lengths
  type: boolean?
  inputBinding:
    prefix: --length-undefined
- id: in_padding_off
  doc: no padding (default)
  type: boolean?
  inputBinding:
    prefix: --padding-off
- id: in_sort_conc_studies
  doc: "[p]refix: string\nsort studies using prefix p and a timestamp"
  type: boolean?
  inputBinding:
    prefix: --sort-conc-studies
- id: in_sort_on_study_uid
  doc: "[p]refix: string\nsort studies using prefix p and the Study\nInstance UID"
  type: boolean?
  inputBinding:
    prefix: --sort-on-study-uid
- id: in_sort_on_patient_name
  doc: "sort studies using the Patient's Name and\na timestamp"
  type: boolean?
  inputBinding:
    prefix: --sort-on-patientname
- id: in_default_filenames
  doc: generate filename from instance UID (default)
  type: boolean?
  inputBinding:
    prefix: --default-filenames
- id: in_time_names
  doc: generate filename from creation time
  type: boolean?
  inputBinding:
    prefix: --timenames
- id: in_filename_extension
  doc: "[e]xtension: string\nappend e to all filenames"
  type: boolean?
  inputBinding:
    prefix: --filename-extension
- id: in_exec_on_reception
  doc: "[c]ommand: string\nexecute command c after having received and\nprocessed\
    \ one C-STORE-RQ message"
  type: boolean?
  inputBinding:
    prefix: --exec-on-reception
- id: in_exec_on_eo_study
  doc: "[c]ommand: string\nexecute command c after having received and\nprocessed\
    \ all C-STORE-RQ messages that belong\nto one study"
  type: boolean?
  inputBinding:
    prefix: --exec-on-eostudy
- id: in_rename_on_eo_study
  doc: "having received and processed all C-STORE-RQ\nmessages that belong to one\
    \ study, rename\noutput files according to certain pattern"
  type: boolean?
  inputBinding:
    prefix: --rename-on-eostudy
- id: in_eo_study_timeout
  doc: "[t]imeout: integer\nspecifies a timeout of t seconds for\nend-of-study determination"
  type: boolean?
  inputBinding:
    prefix: --eostudy-timeout
- id: in_exec_sync
  doc: execute command synchronously in foreground
  type: boolean?
  inputBinding:
    prefix: --exec-sync
- id: in_port
  doc: tcp/ip port number to listen on
  type: string
  inputBinding:
    position: 0
- id: in_string
  doc: use specified password
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "[d]irectory: string (default: \".\")\nwrite received objects to existing directory\
    \ d"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- storescp
