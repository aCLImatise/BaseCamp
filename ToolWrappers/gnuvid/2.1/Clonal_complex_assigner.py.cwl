class: CommandLineTool
id: Clonal_complex_assigner.py.cwl
inputs:
- id: in_level
  doc: "level of locus variant to assign CC (e.g. SLV, DLV)\n[Default: 2]"
  type: long?
  inputBinding:
    prefix: --level
- id: in_number_connections
  doc: 'number of connections to assign CC [Default: 20]'
  type: long?
  inputBinding:
    prefix: --number_connections
- id: in_resolve
  doc: "provide csv file of 3 columns, 1)conflict (Assign_CC\nor Founder) 2)ST 3)CC\n"
  type: File?
  inputBinding:
    prefix: --resolve
- id: in_output
  doc: output name
  type: string
  inputBinding:
    position: 0
- id: in_e_burst_mst_report
  doc: eBURST MST csv report
  type: string
  inputBinding:
    position: 1
- id: in_st_gnu_vid_report
  doc: ST GNUVID csv report
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gnuvid:2.1--0
cwlVersion: v1.1
baseCommand:
- Clonal_complex_assigner.py
