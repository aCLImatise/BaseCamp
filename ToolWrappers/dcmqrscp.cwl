class: CommandLineTool
id: dcmqrscp.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet                 quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose               verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug                 debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level             [l]evel: string constant\n(fatal, error, warn, info,\
    \ debug, trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config            [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in__config_stringuse
  doc: "--config                [f]ilename: string\nuse specific configuration file\n\
    (default: /usr/local/etc/dcmtk/dcmqrscp.cfg)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in__singleprocess_single
  doc: --single-process        single process mode
  type: boolean
  inputBinding:
    prefix: -s
- id: in_fork
  doc: fork child process for each assoc. (default)
  type: boolean
  inputBinding:
    prefix: --fork
- id: in_require_find
  doc: "reject all MOVE/GET presentation contexts for\nwhich no correspond. FIND context\
    \ is proposed"
  type: boolean
  inputBinding:
    prefix: --require-find
- id: in_no_parallel_store
  doc: "reject multiple simultaneous STORE presentat.\ncontexts for one application\
    \ entity title"
  type: boolean
  inputBinding:
    prefix: --no-parallel-store
- id: in_disable_get
  doc: disable C-GET support
  type: boolean
  inputBinding:
    prefix: --disable-get
- id: in_allow_shutdown
  doc: allow external shutdown via private SOP class
  type: boolean
  inputBinding:
    prefix: --allow-shutdown
- id: in_xf
  doc: --check-find            check C-FIND identifier validity
  type: boolean
  inputBinding:
    prefix: -XF
- id: in_no_check_find
  doc: do not check C-FIND identifier validity (def.)
  type: boolean
  inputBinding:
    prefix: --no-check-find
- id: in__checkmove_check
  doc: --check-move            check C-MOVE identifier validity
  type: boolean
  inputBinding:
    prefix: -XM
- id: in_no_check_move
  doc: do not check C-MOVE identifier validity (def.)
  type: boolean
  inputBinding:
    prefix: --no-check-move
- id: in_move_unrestricted
  doc: do not restrict move destination (default)
  type: boolean
  inputBinding:
    prefix: --move-unrestricted
- id: in_za
  doc: --move-aetitle          restrict move dest. to requesting AE title
  type: boolean
  inputBinding:
    prefix: -ZA
- id: in_zh
  doc: --move-host             restrict move destination to requesting host
  type: boolean
  inputBinding:
    prefix: -ZH
- id: in_zv
  doc: --move-vendor           restrict move destination to requesting vendor
  type: boolean
  inputBinding:
    prefix: -ZV
- id: in_qp
  doc: --no-patient-root       do not support Patient Root Q/R models
  type: boolean
  inputBinding:
    prefix: -QP
- id: in_qs
  doc: --no-study-root         do not support Study Root Q/R models
  type: boolean
  inputBinding:
    prefix: -QS
- id: in_qo
  doc: --no-patient-study      do not support Patient/Study Only Q/R models
  type: boolean
  inputBinding:
    prefix: -QO
- id: in__proposeuncompr_propose
  doc: "=   --propose-uncompr       propose all uncompressed TS, explicit VR\nwith\
    \ local byte ordering first (default)"
  type: boolean
  inputBinding:
    prefix: -x
- id: in_xe
  doc: "--propose-little        propose all uncompressed TS, explicit VR\nlittle endian\
    \ first"
  type: boolean
  inputBinding:
    prefix: -xe
- id: in_xb
  doc: "--propose-big           propose all uncompressed TS, explicit VR\nbig endian\
    \ first"
  type: boolean
  inputBinding:
    prefix: -xb
- id: in_xi
  doc: --propose-implicit      propose implicit VR little endian TS only
  type: boolean
  inputBinding:
    prefix: -xi
- id: in_xs
  doc: "--propose-lossless      propose default JPEG lossless TS\nand all uncompressed\
    \ transfer syntaxes"
  type: boolean
  inputBinding:
    prefix: -xs
- id: in_xy
  doc: "--propose-jpeg8         propose default JPEG lossy TS for 8 bit data\nand\
    \ all uncompressed transfer syntaxes"
  type: boolean
  inputBinding:
    prefix: -xy
- id: in_xx
  doc: "--propose-jpeg12        propose default JPEG lossy TS for 12 bit data\nand\
    \ all uncompressed transfer syntaxes"
  type: boolean
  inputBinding:
    prefix: -xx
- id: in_xv
  doc: "--propose-j2k-lossless  propose JPEG 2000 lossless TS\nand all uncompressed\
    \ transfer syntaxes"
  type: boolean
  inputBinding:
    prefix: -xv
- id: in_xw
  doc: "--propose-j2k-lossy     propose JPEG 2000 lossy TS\nand all uncompressed transfer\
    \ syntaxes"
  type: boolean
  inputBinding:
    prefix: -xw
- id: in_xt
  doc: "--propose-jls-lossless  propose JPEG-LS lossless TS\nand all uncompressed\
    \ transfer syntaxes"
  type: boolean
  inputBinding:
    prefix: -xt
- id: in_xu
  doc: "--propose-jls-lossy     propose JPEG-LS lossy TS\nand all uncompressed transfer\
    \ syntaxes"
  type: boolean
  inputBinding:
    prefix: -xu
- id: in__proposempeg_propose_ts
  doc: --propose-mpeg2         propose MPEG2 Main Profile @ Main Level TS only
  type: boolean
  inputBinding:
    prefix: -xm
- id: in_xh
  doc: --propose-mpeg2-high    propose MPEG2 Main Profile @ High Level TS only
  type: boolean
  inputBinding:
    prefix: -xh
- id: in_xn
  doc: --propose-mpeg4         propose MPEG4 AVC/H.264 HP / Level 4.1 TS only
  type: boolean
  inputBinding:
    prefix: -xn
- id: in_xl
  doc: --propose-mpeg4-bd      propose MPEG4 AVC/H.264 BD-compatible TS only
  type: boolean
  inputBinding:
    prefix: -xl
- id: in_xr
  doc: "--propose-rle           propose RLE lossless TS\nand all uncompressed transfer\
    \ syntaxes"
  type: boolean
  inputBinding:
    prefix: -xr
- id: in_xd
  doc: "--propose-deflated      propose deflated expl. VR little endian TS\nand all\
    \ uncompressed transfer syntaxes"
  type: boolean
  inputBinding:
    prefix: -xd
- id: in_to
  doc: "--timeout               [s]econds: integer (default: unlimited)\ntimeout for\
    \ connection requests"
  type: boolean
  inputBinding:
    prefix: -to
- id: in_ta
  doc: "--acse-timeout          [s]econds: integer (default: 30)\ntimeout for ACSE\
    \ messages"
  type: boolean
  inputBinding:
    prefix: -ta
- id: in_td
  doc: "--dimse-timeout         [s]econds: integer (default: unlimited)\ntimeout for\
    \ DIMSE messages"
  type: boolean
  inputBinding:
    prefix: -td
- id: in_max_pdu
  doc: "[n]umber of bytes: integer (4096..131072)\nset max receive pdu to n bytes\n\
    (default: use value from configuration file)"
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
- id: in_up
  doc: --uid-padding           silently correct space-padded UIDs
  type: boolean
  inputBinding:
    prefix: -up
- id: in__disablenewvr_disable
  doc: --disable-new-vr        disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: in__normal_allow
  doc: --normal                allow implicit format conversions (default)
  type: boolean
  inputBinding:
    prefix: -B
- id: in__writedataset_write
  doc: --write-dataset         write data set without file meta information
  type: boolean
  inputBinding:
    prefix: -F
- id: in__grouplengthremove_always
  doc: --group-length-remove   always write without group length elements
  type: boolean
  inputBinding:
    prefix: -g
- id: in__lengthundefined_write
  doc: --length-undefined      write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -e
- id: in__paddingoff_padding
  doc: --padding-off           no padding (default)
  type: boolean
  inputBinding:
    prefix: -p
- id: in_port
  doc: "tcp/ip port number to listen on\n(default: in config file)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcmqrscp
