#!/usr/bin/env cwl-runner

baseCommand:
- gaas_scipio2grid.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_scipio2grid.pl
inputs:
- doc: ''
  id: gaas_scipio_grid_pl
  inputBinding:
    position: 0
  type: string
- doc: you want to define a particular queue to run the jobs
  id: queue
  inputBinding:
    prefix: --queue
  type: string
- doc: Define which grid to use, Slurm, Lsf or None. Default = Slurm.
  id: grid
  inputBinding:
    prefix: --grid
  type: boolean
- doc: The name of the output directory.
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: description,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: relevant information as possible,
  id: as
  inputBinding:
    prefix: '- as'
  type: string
- doc: used,
  id: the
  inputBinding:
    prefix: '- the'
  type: string
- doc: sample,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: of the expected behaviour that is not occurring.
  id: an
  inputBinding:
    prefix: '- an'
  type: string
