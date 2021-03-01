class: CommandLineTool
id: debarcer_report.cwl
inputs:
- id: in_directory
  doc: Directory with subdirectories including Figures
  type: Directory?
  inputBinding:
    prefix: --Directory
- id: in_extension
  doc: "Figure format. Does not generate a report if pdf, even\nwith -r True. Default\
    \ is png"
  type: string?
  inputBinding:
    prefix: --Extension
- id: in_sample
  doc: "Sample name. Optional. Directory basename is sample\nname if not provided"
  type: Directory?
  inputBinding:
    prefix: --Sample
- id: in_min_cov
  doc: "Minimum coverage value. Values below are plotted in\nred"
  type: long?
  inputBinding:
    prefix: --MinCov
- id: in_min_ratio
  doc: "Minimum children to parent umi ratio. Values below are\nplotted in red"
  type: long?
  inputBinding:
    prefix: --MinRatio
- id: in_minum_is
  doc: Minimum umi count. Values below are plotted in red
  type: string?
  inputBinding:
    prefix: --MinUmis
- id: in_min_children
  doc: "Minimum children umi count. Values below are plotted\nin red\n"
  type: long?
  inputBinding:
    prefix: --MinChildren
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/debarcer:2.1.3--py_0
cwlVersion: v1.1
baseCommand:
- debarcer
- report
