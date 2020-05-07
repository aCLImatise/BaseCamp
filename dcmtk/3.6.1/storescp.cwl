class: CommandLineTool
id: storescp.cwl
inputs:
- id: port
  doc: tcp/ip port number to listen on
  type: string
  inputBinding:
    position: 0
- id: single_process
  doc: single process mode (default)
  type: boolean
  inputBinding:
    prefix: --single-process
- id: fork
  doc: fork child process for each association
  type: boolean
  inputBinding:
    prefix: --fork
- id: xf
  doc: '--config-file          [f]ilename, [p]rofile: string use profile p from config
    file f'
  type: boolean
  inputBinding:
    prefix: -xf
- id: id
  doc: --inetd                run from inetd super server (not with --fork)
  type: boolean
  inputBinding:
    prefix: -id
- id: ta
  doc: '--acse-timeout         [s]econds: integer (default: 30) timeout for ACSE messages'
  type: boolean
  inputBinding:
    prefix: -ta
- id: td
  doc: '--dimse-timeout        [s]econds: integer (default: unlimited) timeout for
    DIMSE messages'
  type: boolean
  inputBinding:
    prefix: -td
- id: ae_title
  doc: '[a]etitle: string set my AE title (default: STORESCP)'
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: max_pdu
  doc: '[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (def.:
    16384)'
  type: boolean
  inputBinding:
    prefix: --max-pdu
- id: disable_host_lookup
  doc: disable hostname lookup
  type: boolean
  inputBinding:
    prefix: --disable-host-lookup
- id: refuse
  doc: refuse association
  type: boolean
  inputBinding:
    prefix: --refuse
- id: reject
  doc: reject association if no implement. class UID
  type: boolean
  inputBinding:
    prefix: --reject
- id: ignore
  doc: ignore store data, receive but do not store
  type: boolean
  inputBinding:
    prefix: --ignore
- id: sleep_after
  doc: '[s]econds: integer sleep s seconds after store (default: 0)'
  type: boolean
  inputBinding:
    prefix: --sleep-after
- id: sleep_during
  doc: '[s]econds: integer sleep s seconds during store (default: 0)'
  type: boolean
  inputBinding:
    prefix: --sleep-during
- id: abort_after
  doc: abort association after receipt of C-STORE-RQ (but before sending response)
  type: boolean
  inputBinding:
    prefix: --abort-after
- id: abort_during
  doc: abort association during receipt of C-STORE-RQ
  type: boolean
  inputBinding:
    prefix: --abort-during
- id: pm
  doc: --promiscuous          promiscuous mode, accept unknown SOP classes (not with
    --config-file)
  type: boolean
  inputBinding:
    prefix: -pm
- id: up
  doc: --uid-padding          silently correct space-padded UIDs
  type: boolean
  inputBinding:
    prefix: -up
- id: pw
  doc: --null-passwd          use empty string as password
  type: boolean
  inputBinding:
    prefix: -pw
- id: pem_keys
  doc: read keys and certificates as PEM file (def.)
  type: boolean
  inputBinding:
    prefix: --pem-keys
- id: der_keys
  doc: read keys and certificates as DER file
  type: boolean
  inputBinding:
    prefix: --der-keys
- id: rc
  doc: --require-peer-cert    verify peer certificate, fail if absent (def.)
  type: boolean
  inputBinding:
    prefix: -rc
- id: vc
  doc: --verify-peer-cert     verify peer certificate if present
  type: boolean
  inputBinding:
    prefix: -vc
- id: ic
  doc: --ignore-peer-cert     don't verify peer certificate
  type: boolean
  inputBinding:
    prefix: -ic
- id: od
  doc: '--output-directory     [d]irectory: string (default: ".") write received objects
    to existing directory d'
  type: boolean
  inputBinding:
    prefix: -od
- id: f
  doc: --write-dataset        write data set without file meta information
  type: boolean
  inputBinding:
    prefix: -F
- id: u
  doc: --disable-new-vr       disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: g
  doc: --group-length-remove  always write without group length elements
  type: boolean
  inputBinding:
    prefix: -g
- id: e
  doc: --length-undefined     write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -e
- id: ss
  doc: '--sort-conc-studies    [p]refix: string sort studies using prefix p and a
    timestamp'
  type: boolean
  inputBinding:
    prefix: -ss
- id: su
  doc: '--sort-on-study-uid    [p]refix: string sort studies using prefix p and the
    Study Instance UID'
  type: boolean
  inputBinding:
    prefix: -su
- id: sp
  doc: --sort-on-patientname  sort studies using the Patient's Name and a timestamp
  type: boolean
  inputBinding:
    prefix: -sp
- id: tn
  doc: --timenames            generate filename from creation time
  type: boolean
  inputBinding:
    prefix: -tn
- id: fe
  doc: '--filename-extension   [e]xtension: string append e to all filenames'
  type: boolean
  inputBinding:
    prefix: -fe
- id: xcr
  doc: '--exec-on-reception    [c]ommand: string execute command c after having received
    and processed one C-STORE-RQ message'
  type: boolean
  inputBinding:
    prefix: -xcr
- id: xcs
  doc: '--exec-on-eostudy      [c]ommand: string execute command c after having received
    and processed all C-STORE-RQ messages that belong to one study'
  type: boolean
  inputBinding:
    prefix: -xcs
- id: rns
  doc: --rename-on-eostudy    having received and processed all C-STORE-RQ messages
    that belong to one study, rename output files according to certain pattern
  type: boolean
  inputBinding:
    prefix: -rns
- id: tos
  doc: '--eostudy-timeout      [t]imeout: integer specifies a timeout of t seconds
    for end-of-study determination'
  type: boolean
  inputBinding:
    prefix: -tos
- id: xs
  doc: --exec-sync            execute command synchronously in foreground
  type: boolean
  inputBinding:
    prefix: -xs
outputs: []
cwlVersion: v1.1
baseCommand:
- storescp
