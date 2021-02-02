class: CommandLineTool
id: storescu.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet              quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose            verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug              debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level          [l]evel: string constant\n(fatal, error, warn, info,\
    \ debug, trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config         [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in__readdataset_read
  doc: --read-dataset       read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: in__norecurse_recurse
  doc: --no-recurse         do not recurse within directories (default)
  type: boolean
  inputBinding:
    prefix: -r
- id: in_ae_title
  doc: "[a]etitle: string\nset my calling AE title (default: STORESCU)"
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: in_call
  doc: "[a]etitle: string\nset called AE title of peer (default: ANY-SCP)"
  type: boolean
  inputBinding:
    prefix: --call
- id: in_xf
  doc: "--config-file        [f]ilename, [p]rofile: string\nuse profile p from config\
    \ file f"
  type: boolean
  inputBinding:
    prefix: -xf
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
- id: in_xm
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
- id: in__required_propose
  doc: "--required              propose only required presentation contexts\n(default:\
    \ propose all supported)"
  type: boolean
  inputBinding:
    prefix: -R
- id: in__disablenewvr_disable
  doc: --disable-new-vr     disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: in_user
  doc: "[u]ser name: string\nauthenticate using user name u"
  type: boolean
  inputBinding:
    prefix: --user
- id: in_password
  doc: "[p]assword: string (only with --user)\nauthenticate using password p"
  type: boolean
  inputBinding:
    prefix: --password
- id: in_empty_password
  doc: send empty password (only with --user)
  type: boolean
  inputBinding:
    prefix: --empty-password
- id: in_kt
  doc: "--kerberos           [f]ilename: string\nread kerberos ticket from file f"
  type: boolean
  inputBinding:
    prefix: -kt
- id: in_saml
  doc: "[f]ilename: string\nread SAML request from file f"
  type: boolean
  inputBinding:
    prefix: --saml
- id: in_pos_response
  doc: expect positive response
  type: boolean
  inputBinding:
    prefix: --pos-response
- id: in_to
  doc: "--timeout            [s]econds: integer (default: unlimited)\ntimeout for\
    \ connection requests"
  type: boolean
  inputBinding:
    prefix: -to
- id: in_ta
  doc: "--acse-timeout       [s]econds: integer (default: 30)\ntimeout for ACSE messages"
  type: boolean
  inputBinding:
    prefix: -ta
- id: in_td
  doc: "--dimse-timeout      [s]econds: integer (default: unlimited)\ntimeout for\
    \ DIMSE messages"
  type: boolean
  inputBinding:
    prefix: -td
- id: in_max_pdu
  doc: "[n]umber of bytes: integer (4096..131072)\nset max receive pdu to n bytes\
    \ (default: 16384)"
  type: boolean
  inputBinding:
    prefix: --max-pdu
- id: in_max_send_pdu
  doc: "[n]umber of bytes: integer (4096..131072)\nrestrict max send pdu to n bytes"
  type: boolean
  inputBinding:
    prefix: --max-send-pdu
- id: in_repeat
  doc: "[n]umber: integer\nrepeat n times"
  type: boolean
  inputBinding:
    prefix: --repeat
- id: in_abort
  doc: abort association instead of releasing it
  type: boolean
  inputBinding:
    prefix: --abort
- id: in_nh
  doc: "--no-halt            do not halt if unsuccessful store encountered\n(default:\
    \ do halt)"
  type: boolean
  inputBinding:
    prefix: -nh
- id: in_up
  doc: --uid-padding        silently correct space-padded UIDs
  type: boolean
  inputBinding:
    prefix: -up
- id: in_disable_tls
  doc: use normal TCP/IP connection (default)
  type: boolean
  inputBinding:
    prefix: --disable-tls
- id: in_pw
  doc: --null-passwd        use empty string as password
  type: boolean
  inputBinding:
    prefix: -pw
- id: in_pem_keys
  doc: read keys and certificates as PEM file (default)
  type: boolean
  inputBinding:
    prefix: --pem-keys
- id: in_der_keys
  doc: read keys and certificates as DER file
  type: boolean
  inputBinding:
    prefix: --der-keys
- id: in_rc
  doc: --require-peer-cert  verify peer certificate, fail if absent (default)
  type: boolean
  inputBinding:
    prefix: -rc
- id: in_vc
  doc: --verify-peer-cert   verify peer certificate if present
  type: boolean
  inputBinding:
    prefix: -vc
- id: in_ic
  doc: --ignore-peer-cert   don't verify peer certificate
  type: boolean
  inputBinding:
    prefix: -ic
- id: in_peer
  doc: hostname of DICOM peer
  type: string
  inputBinding:
    position: 0
- id: in_port
  doc: tcp/ip port number of peer
  type: string
  inputBinding:
    position: 1
- id: in_dcm_file_in
  doc: DICOM file or directory to be transmitted
  type: string
  inputBinding:
    position: 2
- id: in_sent
  doc: '+IR   --invent-series      [n]umber: integer (implies --invent-instance)'
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
cwlVersion: v1.1
baseCommand:
- storescu
