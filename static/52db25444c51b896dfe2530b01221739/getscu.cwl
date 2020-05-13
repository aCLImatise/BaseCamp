class: CommandLineTool
id: getscu.cwl
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
- id: k
  doc: '--key                  [k]ey: gggg,eeee="str", path or dic. name="str" override
    matching key'
  type: boolean
  inputBinding:
    prefix: -k
- id: p
  doc: --patient              use patient root information model (default)
  type: boolean
  inputBinding:
    prefix: -P
- id: s
  doc: --study                use study root information model
  type: boolean
  inputBinding:
    prefix: -S
- id: o
  doc: --psonly               use patient/study only information model
  type: boolean
  inputBinding:
    prefix: -O
- id: ae_title
  doc: '[a]etitle: string set my calling AE title (default: GETSCU)'
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: call
  doc: '[a]etitle: string set called AE title of peer (default: ANY-SCP)'
  type: boolean
  inputBinding:
    prefix: --call
- id: x
  doc: =   --propose-uncompr      propose all uncompressed TS, explicit VR with local
    byte ordering first (default)
  type: boolean
  inputBinding:
    prefix: -x
- id: xe
  doc: --propose-little       propose all uncompressed TS, explicit VR little endian
    first
  type: boolean
  inputBinding:
    prefix: -xe
- id: xb
  doc: --propose-big          propose all uncompressed TS, explicit VR big endian
    first
  type: boolean
  inputBinding:
    prefix: -xb
- id: xd
  doc: --propose-deflated     propose deflated explicit VR little endian TS and all
    uncompressed transfer syntaxes
  type: boolean
  inputBinding:
    prefix: -xd
- id: xi
  doc: --propose-implicit     propose implicit VR little endian TS only
  type: boolean
  inputBinding:
    prefix: -xi
- id: to
  doc: '--timeout              [s]econds: integer (default: unlimited) timeout for
    connection requests'
  type: boolean
  inputBinding:
    prefix: -to
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
- id: od
  doc: '--output-directory     [d]irectory: string (default: ".") write received objects
    to existing directory d'
  type: boolean
  inputBinding:
    prefix: -od
- id: ignore
  doc: ignore store data, receive but do not store
  type: boolean
  inputBinding:
    prefix: --ignore
outputs: []
cwlVersion: v1.1
baseCommand:
- getscu
