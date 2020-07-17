class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/artic_plot_amplicon_depth_depthFiles.cwl
inputs:
- id: primer_scheme
  doc: ''
  type: string
  inputBinding:
    prefix: --primerScheme
- id: sample_id
  doc: ''
  type: boolean
  inputBinding:
    prefix: --sampleID
- id: artic_plot_amplicon_depth
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- artic_plot_amplicon_depth
- depthFiles
