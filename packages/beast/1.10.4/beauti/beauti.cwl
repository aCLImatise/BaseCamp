class: CommandLineTool
id: beauti.cwl
inputs:
- id: in_advanced
  doc: advanced & developer features
  type: string
  inputBinding:
    prefix: -advanced
- id: in_version
  doc: the version and credits and stop
  type: string
  inputBinding:
    prefix: -version
- id: in_alexei_atcs_dot_auckland_do_tac_dot_nz
  doc: Institute of Evolutionary Biology
  type: string
  inputBinding:
    position: 0
- id: in_a_dotrambautateddotacdotuk
  doc: David Geffen School of Medicine
  type: string
  inputBinding:
    position: 0
- id: in_m_suchard_at_ucla_dot_edu
  doc: "Downloads, Help & Resources:\nhttp://beast.community"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- beauti
