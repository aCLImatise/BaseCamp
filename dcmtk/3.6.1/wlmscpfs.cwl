class: CommandLineTool
id: wlmscpfs.cwl
inputs:
- id: port
  doc: tcp/ip port number to listen on
  type: string
  inputBinding:
    position: 0
- id: q
  doc: --quiet                quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose              verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug                debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level            [l]evel: string constant (fatal, error, warn, info,
    debug, trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config           [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: s
  doc: --single-process       single process mode --fork                 fork child
    process for each association (def.)
  type: boolean
  inputBinding:
    prefix: -s
- id: data_files_path
  doc: '[p]ath: string (default: /home/www/wlist) path to worklist data files'
  type: boolean
  inputBinding:
    prefix: --data-files-path
- id: enable_file_reject
  doc: enable rejection of incomplete worklist files (default)
  type: boolean
  inputBinding:
    prefix: --enable-file-reject
- id: disable_file_reject
  doc: disable rejection of incomplete worklist files
  type: boolean
  inputBinding:
    prefix: --disable-file-reject
- id: return_no_char_set
  doc: return no specific character set (default)
  type: boolean
  inputBinding:
    prefix: --return-no-char-set
- id: return_iso_ir_100
  doc: return specific character set ISO IR 100
  type: boolean
  inputBinding:
    prefix: --return-iso-ir-100
- id: keep_char_set
  doc: return character set provided in file
  type: boolean
  inputBinding:
    prefix: --keep-char-set
- id: no_sq_expansion
  doc: disable expansion of empty sequences in C-FIND request messages
  type: boolean
  inputBinding:
    prefix: --no-sq-expansion
- id: u
  doc: --disable-new-vr       disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: ta
  doc: '--acse-timeout         [s]econds: integer (default: 30) timeout for ACSE messages'
  type: boolean
  inputBinding:
    prefix: -ta
- id: td
  doc: "--dimse-timeout        [s]econds: integer (default: unlimited) timeout for\
    \ DIMSE messages --max-associations     [a]ssocs: integer (default: 50) limit\
    \ maximum number of parallel associations --refuse               refuse association\
    \ --reject               reject association if no implement. class UID --no-fail\
    \              don't fail on an invalid query --sleep-after          [s]econds:\
    \ integer sleep s seconds after find (default: 0) --sleep-during         [s]econds:\
    \ integer sleep s seconds during find (default: 0)"
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
outputs: []
cwlVersion: v1.1
baseCommand:
- wlmscpfs
