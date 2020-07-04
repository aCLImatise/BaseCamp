class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gaas_scipio2grid.pl.cwl
inputs:
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
- id: outdir
  doc: The name of the output directory.
  type: string
  inputBinding:
    prefix: --outdir
- id: genome
  doc: ''
  type: string
  inputBinding:
    prefix: --genome
- id: protein
  doc: ''
  type: string
  inputBinding:
    prefix: --protein
- id: gaas_scipio_grid_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_scipio2grid.pl
