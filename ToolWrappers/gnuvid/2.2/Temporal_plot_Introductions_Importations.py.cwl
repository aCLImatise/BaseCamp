class: CommandLineTool
id: Temporal_plot_Introductions_Importations.py.cwl
inputs:
- id: in_alleles
  doc: include the 10 ORFs calculations [default OFF]
  type: boolean?
  inputBinding:
    prefix: --alleles
- id: in_temporal_plot_circulating
  doc: Temporal plot for circulating CCs and number of Introductions/Exportations
  type: Directory
  inputBinding:
    position: 0
- id: in_list
  doc: Files List ordered by month
  type: string
  inputBinding:
    position: 0
- id: in_state
  doc: State code of interest
  type: string
  inputBinding:
    position: 1
- id: in_gnu_vid_report
  doc: GNUVID strain report
  type: string
  inputBinding:
    position: 2
- id: in_st_gnuvid_tab
  doc: ST GNUVID tab report
  type: Directory
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gnuvid:2.2--0
cwlVersion: v1.1
baseCommand:
- Temporal_plot_Introductions_Importations.py
