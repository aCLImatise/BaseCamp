class: CommandLineTool
id: pyatac_pwm.cwl
inputs:
- id: in_fast_a
  doc: Accepts fasta file
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_bam
  doc: Reads around which to get nucleotide freq
  type: File?
  inputBinding:
    prefix: --bam
- id: in_dinucleotide
  doc: Compute dinucleotide frequencies instead of single
  type: boolean?
  inputBinding:
    prefix: --dinucleotide
- id: in_lower
  doc: lower limit on insert size. default is 0
  type: long?
  inputBinding:
    prefix: --lower
- id: in_upper
  doc: upper limit on insert size. default is 2000
  type: long?
  inputBinding:
    prefix: --upper
- id: in_not_atac
  doc: Don't use atac offsets
  type: boolean?
  inputBinding:
    prefix: --not_atac
- id: in_no_sym
  doc: Don't symmetrize PWM
  type: boolean?
  inputBinding:
    prefix: --no_sym
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
- id: in_bed
  doc: ''
  type: File?
  inputBinding:
    prefix: --bed
- id: in_region
  doc: --bed bed_file        Regions from which to use reads
  type: string
  inputBinding:
    position: 0
- id: in_nucleotide
  doc: --flank int           Bases away from insertion site to get frequencies for.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyatac
- pwm
