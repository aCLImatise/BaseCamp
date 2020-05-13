class: CommandLineTool
id: dcmqrscp.cwl
inputs:
- id: port
  doc: 'tcp/ip port number to listen on (default: in config file)'
  type: string
  inputBinding:
    position: 0
- id: q
  doc: --quiet                 quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose               verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug                 debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level             [l]evel: string constant (fatal, error, warn, info,
    debug, trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config            [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: c
  doc: '--config                [f]ilename: string use specific configuration file
    (default: /tmp/tmp_gcjhv_q/etc/dcmtk/dcmqrscp.cfg)'
  type: boolean
  inputBinding:
    prefix: -c
- id: s
  doc: --single-process        single process mode --fork                  fork child
    process for each assoc. (default)
  type: boolean
  inputBinding:
    prefix: -s
- id: require_find
  doc: reject all MOVE/GET presentation contexts for which no correspond. FIND context
    is proposed
  type: boolean
  inputBinding:
    prefix: --require-find
- id: no_parallel_store
  doc: reject multiple simultaneous STORE presentat. contexts for one application
    entity title
  type: boolean
  inputBinding:
    prefix: --no-parallel-store
- id: disable_get
  doc: disable C-GET support
  type: boolean
  inputBinding:
    prefix: --disable-get
- id: allow_shutdown
  doc: allow external shutdown via private SOP class
  type: boolean
  inputBinding:
    prefix: --allow-shutdown
- id: xf
  doc: --check-find            check C-FIND identifier validity --no-check-find         do
    not check C-FIND identifier validity (def.)
  type: boolean
  inputBinding:
    prefix: -XF
- id: xm
  doc: --check-move            check C-MOVE identifier validity --no-check-move         do
    not check C-MOVE identifier validity (def.)
  type: boolean
  inputBinding:
    prefix: -XM
- id: za
  doc: --move-aetitle          restrict move dest. to requesting AE title
  type: boolean
  inputBinding:
    prefix: -ZA
- id: zh
  doc: --move-host             restrict move destination to requesting host
  type: boolean
  inputBinding:
    prefix: -ZH
- id: zv
  doc: --move-vendor           restrict move destination to requesting vendor
  type: boolean
  inputBinding:
    prefix: -ZV
- id: qp
  doc: --no-patient-root       do not support Patient Root Q/R models
  type: boolean
  inputBinding:
    prefix: -QP
- id: qs
  doc: --no-study-root         do not support Study Root Q/R models
  type: boolean
  inputBinding:
    prefix: -QS
- id: qo
  doc: --no-patient-study      do not support Patient/Study Only Q/R models
  type: boolean
  inputBinding:
    prefix: -QO
- id: x
  doc: =   --propose-uncompr       propose all uncompressed TS, explicit VR with local
    byte ordering first (default)
  type: boolean
  inputBinding:
    prefix: -x
- id: xe
  doc: --propose-little        propose all uncompressed TS, explicit VR little endian
    first
  type: boolean
  inputBinding:
    prefix: -xe
- id: xb
  doc: --propose-big           propose all uncompressed TS, explicit VR big endian
    first
  type: boolean
  inputBinding:
    prefix: -xb
- id: xi
  doc: --propose-implicit      propose implicit VR little endian TS only
  type: boolean
  inputBinding:
    prefix: -xi
- id: xs
  doc: --propose-lossless      propose default JPEG lossless TS and all uncompressed
    transfer syntaxes
  type: boolean
  inputBinding:
    prefix: -xs
- id: xy
  doc: --propose-jpeg8         propose default JPEG lossy TS for 8 bit data and all
    uncompressed transfer syntaxes
  type: boolean
  inputBinding:
    prefix: -xy
- id: xx
  doc: --propose-jpeg12        propose default JPEG lossy TS for 12 bit data and all
    uncompressed transfer syntaxes
  type: boolean
  inputBinding:
    prefix: -xx
- id: xv
  doc: --propose-j2k-lossless  propose JPEG 2000 lossless TS and all uncompressed
    transfer syntaxes
  type: boolean
  inputBinding:
    prefix: -xv
- id: xw
  doc: --propose-j2k-lossy     propose JPEG 2000 lossy TS and all uncompressed transfer
    syntaxes
  type: boolean
  inputBinding:
    prefix: -xw
- id: xt
  doc: --propose-jls-lossless  propose JPEG-LS lossless TS and all uncompressed transfer
    syntaxes
  type: boolean
  inputBinding:
    prefix: -xt
- id: xu
  doc: --propose-jls-lossy     propose JPEG-LS lossy TS and all uncompressed transfer
    syntaxes
  type: boolean
  inputBinding:
    prefix: -xu
- id: xm
  doc: --propose-mpeg2         propose MPEG2 Main Profile @ Main Level TS only
  type: boolean
  inputBinding:
    prefix: -xm
- id: xh
  doc: --propose-mpeg2-high    propose MPEG2 Main Profile @ High Level TS only
  type: boolean
  inputBinding:
    prefix: -xh
- id: xn
  doc: --propose-mpeg4         propose MPEG4 AVC/H.264 HP / Level 4.1 TS only
  type: boolean
  inputBinding:
    prefix: -xn
- id: xl
  doc: --propose-mpeg4-bd      propose MPEG4 AVC/H.264 BD-compatible TS only
  type: boolean
  inputBinding:
    prefix: -xl
- id: xr
  doc: --propose-rle           propose RLE lossless TS and all uncompressed transfer
    syntaxes
  type: boolean
  inputBinding:
    prefix: -xr
- id: xd
  doc: --propose-deflated      propose deflated expl. VR little endian TS and all
    uncompressed transfer syntaxes
  type: boolean
  inputBinding:
    prefix: -xd
- id: to
  doc: '--timeout               [s]econds: integer (default: unlimited) timeout for
    connection requests'
  type: boolean
  inputBinding:
    prefix: -to
- id: ta
  doc: '--acse-timeout          [s]econds: integer (default: 30) timeout for ACSE
    messages'
  type: boolean
  inputBinding:
    prefix: -ta
- id: td
  doc: '--dimse-timeout         [s]econds: integer (default: unlimited) timeout for
    DIMSE messages'
  type: boolean
  inputBinding:
    prefix: -td
- id: max_pdu
  doc: '[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default:
    use value from configuration file)'
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
- id: up
  doc: --uid-padding           silently correct space-padded UIDs
  type: boolean
  inputBinding:
    prefix: -up
- id: u
  doc: --disable-new-vr        disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: f
  doc: --write-dataset         write data set without file meta information
  type: boolean
  inputBinding:
    prefix: -F
- id: g
  doc: --group-length-remove   always write without group length elements
  type: boolean
  inputBinding:
    prefix: -g
- id: e
  doc: --length-undefined      write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmqrscp
