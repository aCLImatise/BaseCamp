class: CommandLineTool
id: moca_plot.cwl
inputs:
- id: in_meme_dir
  doc: MEME output directory  [required]
  type: Directory
  inputBinding:
    prefix: --meme-dir
- id: in_centri_mo_dir
  doc: Centrimo output directory  [required]
  type: Directory
  inputBinding:
    prefix: --centrimo-dir
- id: in_fimo_dir_sample
  doc: Sample fimo.txt  [required]
  type: string
  inputBinding:
    prefix: --fimo-dir-sample
- id: in_fimo_dir_control
  doc: Control fimo.txt  [required]
  type: string
  inputBinding:
    prefix: --fimo-dir-control
- id: in_name
  doc: Plot title
  type: string
  inputBinding:
    prefix: --name
- id: in_flank_motif
  doc: "Length of sequence flanking motif\n[required]"
  type: long
  inputBinding:
    prefix: --flank-motif
- id: in_motif
  doc: Motif number
  type: long
  inputBinding:
    prefix: --motif
- id: in_oc
  doc: Output Directory  [required]
  type: Directory
  inputBinding:
    prefix: --oc
- id: in_configuration
  doc: Configuration file  [required]
  type: File
  inputBinding:
    prefix: --configuration
- id: in_show_progress
  doc: Print progress
  type: boolean
  inputBinding:
    prefix: --show-progress
- id: in_genome_build
  doc: "Key denoting genome build to use in\nconfiguration file  [required]"
  type: File
  inputBinding:
    prefix: --genome-build
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_meme_dir
  doc: MEME output directory  [required]
  type: Directory
  outputBinding:
    glob: $(inputs.in_meme_dir)
- id: out_centri_mo_dir
  doc: Centrimo output directory  [required]
  type: Directory
  outputBinding:
    glob: $(inputs.in_centri_mo_dir)
- id: out_oc
  doc: Output Directory  [required]
  type: Directory
  outputBinding:
    glob: $(inputs.in_oc)
cwlVersion: v1.1
baseCommand:
- moca
- plot
