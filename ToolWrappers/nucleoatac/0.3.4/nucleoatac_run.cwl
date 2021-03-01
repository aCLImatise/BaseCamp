class: CommandLineTool
id: nucleoatac_run.cwl
inputs:
- id: in_bed
  doc: Regions for which to do stuff.
  type: File?
  inputBinding:
    prefix: --bed
- id: in_bam
  doc: Accepts sorted BAM file
  type: File?
  inputBinding:
    prefix: --bam
- id: in_out
  doc: give output basename
  type: string?
  inputBinding:
    prefix: --out
- id: in_fast_a
  doc: Indexed fasta file
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_pwm
  doc: "PWM descriptor file. Default is Human.PWM.txt included\nin package"
  type: long?
  inputBinding:
    prefix: --pwm
- id: in_cores
  doc: Number of cores to use
  type: long?
  inputBinding:
    prefix: --cores
- id: in_write_all
  doc: write all tracks
  type: boolean?
  inputBinding:
    prefix: --write_all
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nucleoatac
- run
