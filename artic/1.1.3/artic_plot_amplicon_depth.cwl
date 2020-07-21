class: CommandLineTool
id: ../../../artic_plot_amplicon_depth.cwl
inputs:
- id: primer_scheme
  doc: the ARTIC primer scheme
  type: string
  inputBinding:
    prefix: --primerScheme
- id: sample_id
  doc: the sample ID for the provided depth files
  type: string
  inputBinding:
    prefix: --sampleID
- id: outfile_prefix
  doc: the prefix to give the output plot file
  type: string
  inputBinding:
    prefix: --outFilePrefix
outputs: []
cwlVersion: v1.1
baseCommand:
- artic_plot_amplicon_depth
