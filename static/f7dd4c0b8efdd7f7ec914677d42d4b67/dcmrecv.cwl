class: CommandLineTool
id: dcmrecv.cwl
inputs:
- id: port
  doc: tcp/ip port number to listen on
  type: string
  inputBinding:
    position: 0
- id: xf
  doc: '--config-file          [f]ilename, [p]rofile: string use profile p from configuration
    file f'
  type: boolean
  inputBinding:
    prefix: -xf
- id: ae_title
  doc: '[a]etitle: string set my AE title (default: DCMRECV)'
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: use_called_ae_title
  doc: always respond with called AE title
  type: boolean
  inputBinding:
    prefix: --use-called-aetitle
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
- id: disable_host_lookup
  doc: disable hostname lookup
  type: boolean
  inputBinding:
    prefix: --disable-host-lookup
- id: od
  doc: '--output-directory     [d]irectory: string (default: ".") write received objects
    to existing directory d'
  type: boolean
  inputBinding:
    prefix: -od
- id: fe
  doc: '--filename-extension   [e]xtension: string (default: none) append e to all
    generated filenames'
  type: boolean
  inputBinding:
    prefix: -fe
- id: ignore
  doc: ignore dataset, receive but do not store it
  type: boolean
  inputBinding:
    prefix: --ignore
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmrecv
