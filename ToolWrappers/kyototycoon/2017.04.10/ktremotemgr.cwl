class: CommandLineTool
id: ktremotemgr.cwl
inputs:
- id: in_limit
  doc: ''
  type: long
  inputBinding:
    prefix: -limit
- id: in_px
  doc: ''
  type: boolean
  inputBinding:
    prefix: -px
- id: in_sx
  doc: ''
  type: boolean
  inputBinding:
    prefix: -sx
- id: in_db
  doc: ''
  type: string
  inputBinding:
    prefix: -db
- id: in_ssb_rd
  doc: ''
  type: boolean
  inputBinding:
    prefix: -ssbrd
- id: in_ssname
  doc: ''
  type: string
  inputBinding:
    prefix: -ssname
- id: in_sw_time
  doc: ''
  type: long
  inputBinding:
    prefix: -swtime
- id: in_sw_name
  doc: ''
  type: string
  inputBinding:
    prefix: -swname
- id: in_tout
  doc: ''
  type: long
  inputBinding:
    prefix: -tout
- id: in_port
  doc: ''
  type: long
  inputBinding:
    prefix: -port
- id: in_host
  doc: ''
  type: string
  inputBinding:
    prefix: -host
- id: in_bin
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bin
- id: in_xt
  doc: ''
  type: long
  inputBinding:
    prefix: -xt
- id: in_uf
  doc: ''
  type: boolean
  inputBinding:
    prefix: -uf
- id: in_uw
  doc: ''
  type: boolean
  inputBinding:
    prefix: -uw
- id: in_ux
  doc: ''
  type: boolean
  inputBinding:
    prefix: -ux
- id: in_sid
  doc: ''
  type: long
  inputBinding:
    prefix: -sid
- id: in_ts
  doc: ''
  type: long
  inputBinding:
    prefix: -ts
- id: in_pt
  doc: ''
  type: boolean
  inputBinding:
    prefix: -pt
- id: in_pv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -pv
- id: in_rm
  doc: ''
  type: boolean
  inputBinding:
    prefix: -rm
- id: in_max
  doc: ''
  type: long
  inputBinding:
    prefix: -max
- id: in_des
  doc: ''
  type: boolean
  inputBinding:
    prefix: -des
- id: in_pz
  doc: ''
  type: boolean
  inputBinding:
    prefix: -pz
- id: in_hard
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hard
- id: in_iv
  doc: ''
  type: long
  inputBinding:
    prefix: -iv
- id: in_m_port
  doc: ''
  type: long
  inputBinding:
    prefix: -mport
- id: in_clear
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_get
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_import
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_inform
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_match
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_remove
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_report
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_set
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_slave
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sync
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tuner_epl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vacuum
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_kt_remote_mgr
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_proc
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_regex
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ktremotemgr
