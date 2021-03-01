class: CommandLineTool
id: nucleoatac_occ.cwl
inputs:
- id: in_bed
  doc: Peaks in bed format
  type: File?
  inputBinding:
    prefix: --bed
- id: in_bam
  doc: Sorted (and indexed) BAM file
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
- id: in_sizes
  doc: "File with fragment size distribution. Use if don't\nwant calculation of fragment\
    \ size"
  type: File?
  inputBinding:
    prefix: --sizes
- id: in_cores
  doc: Number of cores to use
  type: long?
  inputBinding:
    prefix: --cores
- id: in_upper
  doc: upper limit in insert size. default is 251
  type: long?
  inputBinding:
    prefix: --upper
- id: in_flank
  doc: "Distance on each side of dyad to include for local occ\ncalculation. Default\
    \ is 60."
  type: long?
  inputBinding:
    prefix: --flank
- id: in_min_occ
  doc: "Occupancy cutoff for determining nucleosome\ndistribution. Default is 0.1"
  type: double?
  inputBinding:
    prefix: --min_occ
- id: in_nuc_sep
  doc: minimum separation between occupany peaks. Default is
  type: long?
  inputBinding:
    prefix: --nuc_sep
- id: in_step
  doc: "step size along genome for comuting occ. Default is 5.\nShould be odd, or\
    \ will be subtracted by 1\n"
  type: long?
  inputBinding:
    prefix: --step
- id: in_one_two_zero_dot
  doc: --confidence_interval float
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nucleoatac
- occ
