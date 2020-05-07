class: CommandLineTool
id: ifdata.cwl
inputs:
- id: e
  doc: Reports interface existence via return code
  type: boolean
  inputBinding:
    prefix: -e
- id: p
  doc: Print out the whole config of iface
  type: boolean
  inputBinding:
    prefix: -p
- id: pe
  doc: Print out yes or no according to existence
  type: boolean
  inputBinding:
    prefix: -pe
- id: pa
  doc: Print out the address
  type: boolean
  inputBinding:
    prefix: -pa
- id: pn
  doc: Print netmask
  type: boolean
  inputBinding:
    prefix: -pn
- id: pn
  doc: Print network address
  type: boolean
  inputBinding:
    prefix: -pN
- id: pb
  doc: Print broadcast
  type: boolean
  inputBinding:
    prefix: -pb
- id: pm
  doc: Print mtu
  type: boolean
  inputBinding:
    prefix: -pm
- id: ph
  doc: Print out the hardware address
  type: boolean
  inputBinding:
    prefix: -ph
- id: pf
  doc: Print flags
  type: boolean
  inputBinding:
    prefix: -pf
- id: si
  doc: Print all statistics on input
  type: boolean
  inputBinding:
    prefix: -si
- id: sip
  doc: 'Print # of in packets'
  type: boolean
  inputBinding:
    prefix: -sip
- id: sib
  doc: 'Print # of in bytes'
  type: boolean
  inputBinding:
    prefix: -sib
- id: sie
  doc: 'Print # of in errors'
  type: boolean
  inputBinding:
    prefix: -sie
- id: sid
  doc: 'Print # of in drops'
  type: boolean
  inputBinding:
    prefix: -sid
- id: s_if
  doc: 'Print # of in fifo overruns'
  type: boolean
  inputBinding:
    prefix: -sif
- id: sic
  doc: 'Print # of in compress'
  type: boolean
  inputBinding:
    prefix: -sic
- id: sim
  doc: 'Print # of in multicast'
  type: boolean
  inputBinding:
    prefix: -sim
- id: so
  doc: Print all statistics on output
  type: boolean
  inputBinding:
    prefix: -so
- id: sop
  doc: 'Print # of out packets'
  type: boolean
  inputBinding:
    prefix: -sop
- id: sob
  doc: 'Print # of out bytes'
  type: boolean
  inputBinding:
    prefix: -sob
- id: soe
  doc: 'Print # of out errors'
  type: boolean
  inputBinding:
    prefix: -soe
- id: sod
  doc: 'Print # of out drops'
  type: boolean
  inputBinding:
    prefix: -sod
- id: s_of
  doc: 'Print # of out fifo overruns'
  type: boolean
  inputBinding:
    prefix: -sof
- id: sox
  doc: 'Print # of out collisions'
  type: boolean
  inputBinding:
    prefix: -sox
- id: soc
  doc: 'Print # of out carrier loss'
  type: boolean
  inputBinding:
    prefix: -soc
- id: som
  doc: 'Print # of out multicast'
  type: boolean
  inputBinding:
    prefix: -som
- id: bips
  doc: 'Print # of incoming bytes per second'
  type: boolean
  inputBinding:
    prefix: -bips
- id: bops
  doc: 'Print # of outgoing bytes per second'
  type: boolean
  inputBinding:
    prefix: -bops
outputs: []
cwlVersion: v1.1
baseCommand:
- ifdata
