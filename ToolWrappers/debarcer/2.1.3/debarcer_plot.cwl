class: CommandLineTool
id: debarcer_plot.cwl
inputs:
- id: in_config
  doc: Path to the config file
  type: File?
  inputBinding:
    prefix: --Config
- id: in_directory
  doc: Directory with subdirectories ConsFiles and Datafiles
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
  doc: "Sample name to apear in the report is reporting flag\nactivated. Optional"
  type: string?
  inputBinding:
    prefix: --Sample
- id: in_report
  doc: Generate a report if activated. Default is True
  type: string?
  inputBinding:
    prefix: --Report
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
  doc: "Minimum children umi count. Values below are plotted\nin red"
  type: long?
  inputBinding:
    prefix: --MinChildren
- id: in_ref_threshold
  doc: "Cut Y axis at non-ref frequency, the minimum frequency\nto consider a position\
    \ variable\n"
  type: string?
  inputBinding:
    prefix: --RefThreshold
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
- plot
