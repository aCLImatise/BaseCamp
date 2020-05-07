class: CommandLineTool
id: findscu.cwl
inputs:
- id: peer
  doc: hostname of DICOM peer
  type: string
  inputBinding:
    position: 0
- id: port
  doc: tcp/ip port number of peer
  type: string
  inputBinding:
    position: 1
- id: dcm_file_in
  doc: DICOM query file(s)
  type: string
  inputBinding:
    position: 2
- id: q
  doc: --quiet               quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose             verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug               debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level           [l]evel: string constant (fatal, error, warn, info,
    debug, trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config          [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: k
  doc: '--key                 [k]ey: gggg,eeee="str", path or dict. name="str" override
    matching key'
  type: boolean
  inputBinding:
    prefix: -k
- id: w
  doc: --worklist            use modality worklist information model (def.)
  type: boolean
  inputBinding:
    prefix: -W
- id: p
  doc: --patient             use patient root information model
  type: boolean
  inputBinding:
    prefix: -P
- id: s
  doc: --study               use study root information model
  type: boolean
  inputBinding:
    prefix: -S
- id: o
  doc: --psonly              use patient/study only information model
  type: boolean
  inputBinding:
    prefix: -O
- id: ae_title
  doc: '[a]etitle: string set my calling AE title (default: FINDSCU)'
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: call
  doc: '[a]etitle: string set called AE title of peer (default: ANY-SCP)'
  type: boolean
  inputBinding:
    prefix: --call
- id: u
  doc: --disable-new-vr      disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: x
  doc: =   --propose-uncompr     propose all uncompressed TS, explicit VR with local
    byte ordering first (default)
  type: boolean
  inputBinding:
    prefix: -x
- id: xe
  doc: --propose-little      propose all uncompressed TS, explicit VR little endian
    first
  type: boolean
  inputBinding:
    prefix: -xe
- id: xb
  doc: --propose-big         propose all uncompressed TS, explicit VR big endian first
  type: boolean
  inputBinding:
    prefix: -xb
- id: xd
  doc: --propose-deflated    propose deflated explicit VR little endian TS and all
    uncompressed transfer syntaxes
  type: boolean
  inputBinding:
    prefix: -xd
- id: xi
  doc: --propose-implicit    propose implicit VR little endian TS only
  type: boolean
  inputBinding:
    prefix: -xi
- id: to
  doc: '--timeout             [s]econds: integer (default: unlimited) timeout for
    connection requests'
  type: boolean
  inputBinding:
    prefix: -to
- id: ta
  doc: '--acse-timeout        [s]econds: integer (default: 30) timeout for ACSE messages'
  type: boolean
  inputBinding:
    prefix: -ta
- id: td
  doc: '--dimse-timeout       [s]econds: integer (default: unlimited) timeout for
    DIMSE messages'
  type: boolean
  inputBinding:
    prefix: -td
- id: max_pdu
  doc: '[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default:
    16384)'
  type: boolean
  inputBinding:
    prefix: --max-pdu
- id: repeat
  doc: '[n]umber: integer repeat n times'
  type: boolean
  inputBinding:
    prefix: --repeat
- id: abort
  doc: abort association instead of releasing it
  type: boolean
  inputBinding:
    prefix: --abort
- id: cancel
  doc: '[n]umber: integer cancel after n responses (default: never)'
  type: boolean
  inputBinding:
    prefix: --cancel
- id: pw
  doc: --null-passwd         use empty string as password
  type: boolean
  inputBinding:
    prefix: -pw
- id: pem_keys
  doc: read keys and certificates as PEM file (default)
  type: boolean
  inputBinding:
    prefix: --pem-keys
- id: der_keys
  doc: read keys and certificates as DER file
  type: boolean
  inputBinding:
    prefix: --der-keys
- id: rc
  doc: --require-peer-cert   verify peer certificate, fail if absent (def.)
  type: boolean
  inputBinding:
    prefix: -rc
- id: vc
  doc: --verify-peer-cert    verify peer certificate if present
  type: boolean
  inputBinding:
    prefix: -vc
- id: ic
  doc: --ignore-peer-cert    don't verify peer certificate
  type: boolean
  inputBinding:
    prefix: -ic
- id: od
  doc: '--output-directory    [d]irectory: string (default: ".") write output files
    to existing directory d'
  type: boolean
  inputBinding:
    prefix: -od
- id: dc
  doc: --disable-correction  disable automatic data correction (default)
  type: boolean
  inputBinding:
    prefix: -dc
- id: sr
  doc: --hide-responses      do not output responses to the logger
  type: boolean
  inputBinding:
    prefix: -sr
- id: x
  doc: --extract             extract responses to file (rsp0001.dcm, ...)
  type: boolean
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- findscu
