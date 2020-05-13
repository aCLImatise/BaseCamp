class: CommandLineTool
id: nucleoatac_occ.cwl
inputs:
- id: bed
  doc: Peaks in bed format
  type: string
  inputBinding:
    prefix: --bed
- id: bam
  doc: Sorted (and indexed) BAM file
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
- id: sizes
  doc: File with fragment size distribution. Use if don't want calculation of fragment
    size
  type: string
  inputBinding:
    prefix: --sizes
- id: cores
  doc: Number of cores to use
  type: long
  inputBinding:
    prefix: --cores
- id: upper
  doc: upper limit in insert size. default is 251
  type: long
  inputBinding:
    prefix: --upper
- id: flank
  doc: Distance on each side of dyad to include for local occ calculation. Default
    is 60.
  type: long
  inputBinding:
    prefix: --flank
- id: min_occ
  doc: Occupancy cutoff for determining nucleosome distribution. Default is 0.1
  type: double
  inputBinding:
    prefix: --min_occ
- id: nuc_sep
  doc: minimum separation between occupany peaks. Default is 120.
  type: long
  inputBinding:
    prefix: --nuc_sep
- id: confidence_interval
  doc: confidence interval level for lower and upper bounds. default is 0.9, should
    be between 0 and 1
  type: double
  inputBinding:
    prefix: --confidence_interval
- id: step
  doc: step size along genome for comuting occ. Default is 5. Should be odd, or will
    be subtracted by 1
  type: long
  inputBinding:
    prefix: --step
outputs: []
cwlVersion: v1.1
baseCommand:
- nucleoatac
- occ
