class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gaas_lastz2grid.pl.cwl
inputs:
- id: query
  doc: name of the query genome file.
  type: string
  inputBinding:
    prefix: --query
- id: target
  doc: The name of the target genome file.
  type: boolean
  inputBinding:
    prefix: --target
- id: queue
  doc: you want to define a particular queue to run the jobs
  type: string
  inputBinding:
    prefix: --queue
- id: grid
  doc: Define which grid to use, Slurm, Lsf or None. Default = Slurm.
  type: boolean
  inputBinding:
    prefix: --grid
- id: quiet
  doc: Quiet mode
  type: string
  inputBinding:
    prefix: --quiet
- id: outdir
  doc: The name of the output directory.
  type: string
  inputBinding:
    prefix: --outdir
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: db
  doc: ''
  type: string
  inputBinding:
    prefix: --db
- id: gaas_blat_two_grid_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_lastz2grid.pl
