class: CommandLineTool
id: mb_xxmotif.cwl
inputs:
- id: input_file
  doc: PAR-CLIP file *.table
  type: string
  inputBinding:
    position: 0
- id: genome
  doc: path to genome
  type: string
  inputBinding:
    position: 1
- id: outdir
  doc: output directory
  type: string
  inputBinding:
    position: 2
- id: prefix
  doc: prefix
  type: string
  inputBinding:
    position: 3
- id: neg_set
  doc: set path to negative set if available.
  type: string
  inputBinding:
    prefix: --negSet
- id: plot_pwm
  doc: plot top plotPWM PWMs as pdf sequence logos
  type: string
  inputBinding:
    prefix: --plotPWM
- id: start
  doc: start index of PAR-CLIP sites
  type: string
  inputBinding:
    prefix: --start
- id: stop
  doc: stop index of PAR-CLIP sites
  type: string
  inputBinding:
    prefix: --stop
- id: width
  doc: number of nt +/- the crosslink site
  type: string
  inputBinding:
    prefix: --width
- id: key
  doc: set key that is used for PAR-CLIP site ordering
  type: string
  inputBinding:
    prefix: --key
- id: filter_gff
  doc: set path to GFF if sites should be removed that overlap with the GFF. Does
    not filter by default.
  type: string
  inputBinding:
    prefix: --filterGFF
- id: a_width
  doc: number of nt that are added to the start/stop indices of the GFF annotations
  type: string
  inputBinding:
    prefix: --awidth
- id: keep_tmp_files
  doc: do not clean up temporary files
  type: boolean
  inputBinding:
    prefix: --keep-tmp-files
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-xxmotif
