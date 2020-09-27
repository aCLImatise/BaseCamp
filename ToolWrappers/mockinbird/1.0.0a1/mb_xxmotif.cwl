class: CommandLineTool
id: mb_xxmotif.cwl
inputs:
- id: in_neg_set
  doc: set path to negative set if available.
  type: File
  inputBinding:
    prefix: --negSet
- id: in_plot_pwm
  doc: plot top plotPWM PWMs as pdf sequence logos
  type: string
  inputBinding:
    prefix: --plotPWM
- id: in_start
  doc: start index of PAR-CLIP sites
  type: string
  inputBinding:
    prefix: --start
- id: in_stop
  doc: stop index of PAR-CLIP sites
  type: string
  inputBinding:
    prefix: --stop
- id: in_width
  doc: number of nt +/- the crosslink site
  type: long
  inputBinding:
    prefix: --width
- id: in_key
  doc: set key that is used for PAR-CLIP site ordering
  type: string
  inputBinding:
    prefix: --key
- id: in_filter_gff
  doc: "set path to GFF if sites should be removed that\noverlap with the GFF. Does\
    \ not filter by default."
  type: File
  inputBinding:
    prefix: --filterGFF
- id: in_a_width
  doc: "number of nt that are added to the start/stop indices\nof the GFF annotations"
  type: long
  inputBinding:
    prefix: --awidth
- id: in_keep_tmp_files
  doc: do not clean up temporary files
  type: boolean
  inputBinding:
    prefix: --keep-tmp-files
- id: in_input_file
  doc: PAR-CLIP file *.table
  type: string
  inputBinding:
    position: 0
- id: in_genome
  doc: path to genome
  type: string
  inputBinding:
    position: 1
- id: in_outdir
  doc: output directory
  type: string
  inputBinding:
    position: 2
- id: in_prefix
  doc: prefix
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-xxmotif
