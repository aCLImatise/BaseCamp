class: CommandLineTool
id: nucleoatac_run.cwl
inputs:
- id: bed
  doc: Regions for which to do stuff.
  type: string
  inputBinding:
    prefix: --bed
- id: bam
  doc: Accepts sorted BAM file
  type: string
  inputBinding:
    prefix: --bam
- id: out
  doc: give output basename
  type: string
  inputBinding:
    prefix: --out
- id: fast_a
  doc: Indexed fasta file
  type: string
  inputBinding:
    prefix: --fasta
- id: pwm
  doc: PWM descriptor file. Default is Human.PWM.txt included in package
  type: string
  inputBinding:
    prefix: --pwm
- id: cores
  doc: Number of cores to use
  type: string
  inputBinding:
    prefix: --cores
- id: write_all
  doc: write all tracks
  type: boolean
  inputBinding:
    prefix: --write_all
outputs: []
cwlVersion: v1.1
baseCommand:
- nucleoatac
- run
