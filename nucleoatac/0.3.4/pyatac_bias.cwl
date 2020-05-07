class: CommandLineTool
id: pyatac_bias.cwl
inputs:
- id: fast_a
  doc: Accepts fasta file
  type: string
  inputBinding:
    prefix: --fasta
- id: pwm
  doc: PWM descriptor file. Default is Human.PWM.txt included in package
  type: string
  inputBinding:
    prefix: --pwm
- id: bed
  doc: Positions around which to get nucleotide frequencies
  type: string
  inputBinding:
    prefix: --bed
- id: out
  doc: Basename for output
  type: string
  inputBinding:
    prefix: --out
- id: cores
  doc: number of cores to use
  type: long
  inputBinding:
    prefix: --cores
outputs: []
cwlVersion: v1.1
baseCommand:
- pyatac
- bias
