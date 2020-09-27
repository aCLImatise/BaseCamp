class: CommandLineTool
id: ifdata.cwl
inputs:
- id: in_reports_interface_existence
  doc: Reports interface existence via return code
  type: boolean
  inputBinding:
    prefix: -e
- id: in_print_whole_config
  doc: Print out the whole config of iface
  type: boolean
  inputBinding:
    prefix: -p
- id: in_pe
  doc: Print out yes or no according to existence
  type: boolean
  inputBinding:
    prefix: -pe
- id: in_pa
  doc: Print out the address
  type: boolean
  inputBinding:
    prefix: -pa
- id: in_print_netmask
  doc: Print netmask
  type: boolean
  inputBinding:
    prefix: -pn
- id: in_print_network_address
  doc: Print network address
  type: boolean
  inputBinding:
    prefix: -pN
- id: in_pb
  doc: Print broadcast
  type: boolean
  inputBinding:
    prefix: -pb
- id: in_pm
  doc: Print mtu
  type: boolean
  inputBinding:
    prefix: -pm
- id: in_ph
  doc: Print out the hardware address
  type: boolean
  inputBinding:
    prefix: -ph
- id: in_pf
  doc: Print flags
  type: boolean
  inputBinding:
    prefix: -pf
- id: in_si
  doc: Print all statistics on input
  type: boolean
  inputBinding:
    prefix: -si
- id: in_sip
  doc: 'Print # of in packets'
  type: boolean
  inputBinding:
    prefix: -sip
- id: in_sib
  doc: 'Print # of in bytes'
  type: boolean
  inputBinding:
    prefix: -sib
- id: in_sie
  doc: 'Print # of in errors'
  type: boolean
  inputBinding:
    prefix: -sie
- id: in_sid
  doc: 'Print # of in drops'
  type: boolean
  inputBinding:
    prefix: -sid
- id: in_s_if
  doc: 'Print # of in fifo overruns'
  type: boolean
  inputBinding:
    prefix: -sif
- id: in_sic
  doc: 'Print # of in compress'
  type: boolean
  inputBinding:
    prefix: -sic
- id: in_sim
  doc: 'Print # of in multicast'
  type: boolean
  inputBinding:
    prefix: -sim
- id: in_so
  doc: Print all statistics on output
  type: boolean
  inputBinding:
    prefix: -so
- id: in_sop
  doc: 'Print # of out packets'
  type: boolean
  inputBinding:
    prefix: -sop
- id: in_sob
  doc: 'Print # of out bytes'
  type: boolean
  inputBinding:
    prefix: -sob
- id: in_soe
  doc: 'Print # of out errors'
  type: boolean
  inputBinding:
    prefix: -soe
- id: in_sod
  doc: 'Print # of out drops'
  type: boolean
  inputBinding:
    prefix: -sod
- id: in_s_of
  doc: 'Print # of out fifo overruns'
  type: boolean
  inputBinding:
    prefix: -sof
- id: in_sox
  doc: 'Print # of out collisions'
  type: boolean
  inputBinding:
    prefix: -sox
- id: in_soc
  doc: 'Print # of out carrier loss'
  type: boolean
  inputBinding:
    prefix: -soc
- id: in_som
  doc: 'Print # of out multicast'
  type: boolean
  inputBinding:
    prefix: -som
- id: in_bips
  doc: 'Print # of incoming bytes per second'
  type: boolean
  inputBinding:
    prefix: -bips
- id: in_bops
  doc: 'Print # of outgoing bytes per second'
  type: boolean
  inputBinding:
    prefix: -bops
- id: in_i_face
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ifdata
