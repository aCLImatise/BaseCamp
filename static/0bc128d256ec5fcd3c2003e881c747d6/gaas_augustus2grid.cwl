class: CommandLineTool
id: ../../../gaas_augustus2grid.pl.cwl
inputs:
- id: genome
  doc: The name of the genome fasta file.
  type: string
  inputBinding:
    prefix: --genome
- id: hints
  doc: hints file (e.g Intron)
  type: string
  inputBinding:
    prefix: --hints
- id: species
  doc: Species name for the hmm profile to use within Augustus
  type: boolean
  inputBinding:
    prefix: --species
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
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_augustus2grid.pl
