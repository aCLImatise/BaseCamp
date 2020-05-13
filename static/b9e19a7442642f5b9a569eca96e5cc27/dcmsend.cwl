class: CommandLineTool
id: dcmsend.cwl
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
  doc: DICOM file or directory to be transmitted
  type: string
  inputBinding:
    position: 2
- id: f
  doc: --read-dataset         read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: nh
  doc: --no-halt              do not halt on first invalid input file or if unsuccessful
    store encountered
  type: boolean
  inputBinding:
    prefix: -nh
- id: no_illegal_proposal
  doc: do not propose any presentation context that does not contain the default TS
    (if needed)
  type: boolean
  inputBinding:
    prefix: --no-illegal-proposal
- id: no_uid_checks
  doc: do not check UID values of input files
  type: boolean
  inputBinding:
    prefix: --no-uid-checks
- id: ae_title
  doc: '[a]etitle: string set my calling AE title (default: DCMSEND)'
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: call
  doc: '[a]etitle: string set called AE title of peer (default: ANY-SCP)'
  type: boolean
  inputBinding:
    prefix: --call
- id: ma
  doc: --single-association   always use a single association
  type: boolean
  inputBinding:
    prefix: -ma
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
- id: max_send_pdu
  doc: '[n]umber of bytes: integer (4096..131072) restrict max send pdu to n bytes'
  type: boolean
  inputBinding:
    prefix: --max-send-pdu
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmsend
