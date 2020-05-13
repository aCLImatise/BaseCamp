class: CommandLineTool
id: pyatac_pwm.cwl
inputs:
- id: fast_a
  doc: Accepts fasta file
  type: string
  inputBinding:
    prefix: --fasta
- id: bam
  doc: Reads around which to get nucleotide freq
  type: string
  inputBinding:
    prefix: --bam
- id: bed
  doc: Regions from which to use reads
  type: string
  inputBinding:
    prefix: --bed
- id: dinucleotide
  doc: Compute dinucleotide frequencies instead of single nucleotide
  type: boolean
  inputBinding:
    prefix: --dinucleotide
- id: flank
  doc: Bases away from insertion site to get frequencies for. Default is 10
  type: long
  inputBinding:
    prefix: --flank
- id: lower
  doc: lower limit on insert size. default is 0
  type: long
  inputBinding:
    prefix: --lower
- id: upper
  doc: upper limit on insert size. default is 2000
  type: long
  inputBinding:
    prefix: --upper
- id: not_atac
  doc: Don't use atac offsets
  type: boolean
  inputBinding:
    prefix: --not_atac
- id: no_sym
  doc: Don't symmetrize PWM
  type: boolean
  inputBinding:
    prefix: --no_sym
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
- pwm
