class: CommandLineTool
id: storescp.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet                quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose              verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug                debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level            [l]evel: string constant\n(fatal, error, warn, info,\
    \ debug, trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config           [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in_single_process
  doc: single process mode (default)
  type: boolean
  inputBinding:
    prefix: --single-process
- id: in_fork
  doc: fork child process for each association
  type: boolean
  inputBinding:
    prefix: --fork
- id: in_xf
  doc: "--config-file          [f]ilename, [p]rofile: string\nuse profile p from config\
    \ file f"
  type: boolean
  inputBinding:
    prefix: -xf
- id: in_id
  doc: --inetd                run from inetd super server (not with --fork)
  type: boolean
  inputBinding:
    prefix: -id
- id: in_ta
  doc: "--acse-timeout         [s]econds: integer (default: 30)\ntimeout for ACSE\
    \ messages"
  type: boolean
  inputBinding:
    prefix: -ta
- id: in_td
  doc: "--dimse-timeout        [s]econds: integer (default: unlimited)\ntimeout for\
    \ DIMSE messages"
  type: boolean
  inputBinding:
    prefix: -td
- id: in_ae_title
  doc: "[a]etitle: string\nset my AE title (default: STORESCP)"
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: in_max_pdu
  doc: "[n]umber of bytes: integer (4096..131072)\nset max receive pdu to n bytes\
    \ (def.: 16384)"
  type: boolean
  inputBinding:
    prefix: --max-pdu
- id: in_disable_host_lookup
  doc: disable hostname lookup
  type: boolean
  inputBinding:
    prefix: --disable-host-lookup
- id: in_refuse
  doc: refuse association
  type: boolean
  inputBinding:
    prefix: --refuse
- id: in_reject
  doc: reject association if no implement. class UID
  type: boolean
  inputBinding:
    prefix: --reject
- id: in_ignore
  doc: ignore store data, receive but do not store
  type: boolean
  inputBinding:
    prefix: --ignore
- id: in_sleep_after
  doc: "[s]econds: integer\nsleep s seconds after store (default: 0)"
  type: boolean
  inputBinding:
    prefix: --sleep-after
- id: in_sleep_during
  doc: "[s]econds: integer\nsleep s seconds during store (default: 0)"
  type: boolean
  inputBinding:
    prefix: --sleep-during
- id: in_abort_after
  doc: "abort association after receipt of C-STORE-RQ\n(but before sending response)"
  type: boolean
  inputBinding:
    prefix: --abort-after
- id: in_abort_during
  doc: abort association during receipt of C-STORE-RQ
  type: boolean
  inputBinding:
    prefix: --abort-during
- id: in_pm
  doc: "--promiscuous          promiscuous mode, accept unknown SOP classes\n(not\
    \ with --config-file)"
  type: boolean
  inputBinding:
    prefix: -pm
- id: in_up
  doc: --uid-padding          silently correct space-padded UIDs
  type: boolean
  inputBinding:
    prefix: -up
- id: in_disable_tls
  doc: use normal TCP/IP connection (default)
  type: boolean
  inputBinding:
    prefix: --disable-tls
- id: in_pw
  doc: --null-passwd          use empty string as password
  type: boolean
  inputBinding:
    prefix: -pw
- id: in_pem_keys
  doc: read keys and certificates as PEM file (def.)
  type: boolean
  inputBinding:
    prefix: --pem-keys
- id: in_der_keys
  doc: read keys and certificates as DER file
  type: boolean
  inputBinding:
    prefix: --der-keys
- id: in_rc
  doc: --require-peer-cert    verify peer certificate, fail if absent (def.)
  type: boolean
  inputBinding:
    prefix: -rc
- id: in_vc
  doc: --verify-peer-cert     verify peer certificate if present
  type: boolean
  inputBinding:
    prefix: -vc
- id: in_ic
  doc: --ignore-peer-cert     don't verify peer certificate
  type: boolean
  inputBinding:
    prefix: -ic
- id: in_od
  doc: "--output-directory     [d]irectory: string (default: \".\")\nwrite received\
    \ objects to existing directory d"
  type: Directory
  inputBinding:
    prefix: -od
- id: in__normal_allow
  doc: --normal               allow implicit format conversions (default)
  type: boolean
  inputBinding:
    prefix: -B
- id: in__writedataset_write
  doc: --write-dataset        write data set without file meta information
  type: boolean
  inputBinding:
    prefix: -F
- id: in__disablenewvr_disable
  doc: --disable-new-vr       disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: in__grouplengthremove_always
  doc: --group-length-remove  always write without group length elements
  type: boolean
  inputBinding:
    prefix: -g
- id: in__lengthundefined_write
  doc: --length-undefined     write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -e
- id: in__paddingoff_padding
  doc: --padding-off          no padding (default)
  type: boolean
  inputBinding:
    prefix: -p
- id: in_ss
  doc: "--sort-conc-studies    [p]refix: string\nsort studies using prefix p and a\
    \ timestamp"
  type: boolean
  inputBinding:
    prefix: -ss
- id: in_su
  doc: "--sort-on-study-uid    [p]refix: string\nsort studies using prefix p and the\
    \ Study\nInstance UID"
  type: boolean
  inputBinding:
    prefix: -su
- id: in_sp
  doc: "--sort-on-patientname  sort studies using the Patient's Name and\na timestamp"
  type: boolean
  inputBinding:
    prefix: -sp
- id: in_uf
  doc: --default-filenames    generate filename from instance UID (default)
  type: boolean
  inputBinding:
    prefix: -uf
- id: in_tn
  doc: --timenames            generate filename from creation time
  type: boolean
  inputBinding:
    prefix: -tn
- id: in_fe
  doc: "--filename-extension   [e]xtension: string\nappend e to all filenames"
  type: boolean
  inputBinding:
    prefix: -fe
- id: in_xcr
  doc: "--exec-on-reception    [c]ommand: string\nexecute command c after having received\
    \ and\nprocessed one C-STORE-RQ message"
  type: boolean
  inputBinding:
    prefix: -xcr
- id: in_xcs
  doc: "--exec-on-eostudy      [c]ommand: string\nexecute command c after having received\
    \ and\nprocessed all C-STORE-RQ messages that belong\nto one study"
  type: boolean
  inputBinding:
    prefix: -xcs
- id: in_rns
  doc: "--rename-on-eostudy    having received and processed all C-STORE-RQ\nmessages\
    \ that belong to one study, rename\noutput files according to certain pattern"
  type: boolean
  inputBinding:
    prefix: -rns
- id: in_tos
  doc: "--eostudy-timeout      [t]imeout: integer\nspecifies a timeout of t seconds\
    \ for\nend-of-study determination"
  type: boolean
  inputBinding:
    prefix: -tos
- id: in_xs
  doc: --exec-sync            execute command synchronously in foreground
  type: boolean
  inputBinding:
    prefix: -xs
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
- id: out_od
  doc: "--output-directory     [d]irectory: string (default: \".\")\nwrite received\
    \ objects to existing directory d"
  type: Directory
  outputBinding:
    glob: $(inputs.in_od)
cwlVersion: v1.1
baseCommand:
- storescp
