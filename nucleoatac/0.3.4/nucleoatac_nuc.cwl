class: CommandLineTool
id: nucleoatac_nuc.cwl
inputs:
- id: bed
  doc: Regions for which to do stuff.
  type: string
  inputBinding:
    prefix: --bed
- id: vm_at
  doc: VMat object
  type: string
  inputBinding:
    prefix: --vmat
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
- id: sizes
  doc: File with fragment size distribution. Use if don't want calculation of fragment
    size
  type: string
  inputBinding:
    prefix: --sizes
- id: occ_track
  doc: bgzip compressed, tabix-indexed bedgraph file with occcupancy track. Otherwise
    occ not determined for nuc positions.
  type: string
  inputBinding:
    prefix: --occ_track
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
- id: not_atac
  doc: data is not atac-seq
  type: boolean
  inputBinding:
    prefix: --not_atac
- id: min_z
  doc: Z-score threshold for nucleosome calls. Default is 3
  type: double
  inputBinding:
    prefix: --min_z
- id: min_lr
  doc: Log likelihood ratio threshold for nucleosome calls. Default is 0
  type: double
  inputBinding:
    prefix: --min_lr
- id: nuc_sep
  doc: Minimum separation between non-redundant nucleosomes. Default is 120
  type: long
  inputBinding:
    prefix: --nuc_sep
- id: redundant_sep
  doc: Minimum separation between redundant nucleosomes. Not recommended to be below
    15. Default is 25
  type: long
  inputBinding:
    prefix: --redundant_sep
- id: sd
  doc: Standard deviation for smoothing. Affect the resolution at which nucleosomes
    can be positioned. Not recommended to exceed 25 or to be smaller than 10. Default
    is 10
  type: long
  inputBinding:
    prefix: --sd
outputs: []
cwlVersion: v1.1
baseCommand:
- nucleoatac
- nuc
