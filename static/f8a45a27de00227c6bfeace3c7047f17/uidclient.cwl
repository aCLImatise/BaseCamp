class: CommandLineTool
id: uidclient.cwl
inputs:
- id: in_print_uids_exit
  doc: print n UIDs and exit.
  type: string?
  inputBinding:
    prefix: -p
- id: in_use_namespace_ns
  doc: use namespace ns.
  type: string?
  inputBinding:
    prefix: -n
- id: in_contact_euid_server
  doc: contact EUID server 'server'.
  type: string?
  inputBinding:
    prefix: -E
- id: in_thrash
  doc: "debug; get UIDs as fast as possible using blocksize 1.\nThis is not what you\
    \ want.  Don't use it.\n"
  type: boolean?
  inputBinding:
    prefix: -thrash
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- uidclient
