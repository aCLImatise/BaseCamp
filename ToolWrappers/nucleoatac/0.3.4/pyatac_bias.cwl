class: CommandLineTool
id: pyatac_bias.cwl
inputs:
- id: in_fast_a
  doc: Accepts fasta file
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_pwm
  doc: "PWM descriptor file. Default is Human.PWM.txt included\nin package"
  type: long?
  inputBinding:
    prefix: --pwm
- id: in_bed
  doc: Positions around which to get nucleotide frequencies
  type: File?
  inputBinding:
    prefix: --bed
- id: in_out
  doc: Basename for output
  type: string?
  inputBinding:
    prefix: --out
- id: in_cores
  doc: number of cores to use
  type: long?
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyatac
- bias
