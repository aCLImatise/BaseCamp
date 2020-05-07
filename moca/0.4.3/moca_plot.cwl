class: CommandLineTool
id: moca_plot.cwl
inputs:
- id: meme_dir
  doc: MEME output directory  [required]
  type: string
  inputBinding:
    prefix: --meme-dir
- id: centri_mo_dir
  doc: Centrimo output directory  [required]
  type: string
  inputBinding:
    prefix: --centrimo-dir
- id: fimo_dir_sample
  doc: Sample fimo.txt  [required]
  type: string
  inputBinding:
    prefix: --fimo-dir-sample
- id: fimo_dir_control
  doc: Control fimo.txt  [required]
  type: string
  inputBinding:
    prefix: --fimo-dir-control
- id: name
  doc: Plot title
  type: string
  inputBinding:
    prefix: --name
- id: flank_motif
  doc: Length of sequence flanking motif [required]
  type: long
  inputBinding:
    prefix: --flank-motif
- id: motif
  doc: Motif number
  type: long
  inputBinding:
    prefix: --motif
- id: oc
  doc: Output Directory  [required]
  type: string
  inputBinding:
    prefix: --oc
- id: configuration
  doc: Configuration file  [required]
  type: string
  inputBinding:
    prefix: --configuration
- id: show_progress
  doc: Print progress
  type: boolean
  inputBinding:
    prefix: --show-progress
- id: genome_build
  doc: Key denoting genome build to use in configuration file  [required]
  type: string
  inputBinding:
    prefix: --genome-build
outputs: []
cwlVersion: v1.1
baseCommand:
- moca
- plot
